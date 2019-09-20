"""
Measurement interface for Vivado HLS

Created on Jun 18, 2019
@author: Hans Giesen (giesen@seas.upenn.edu)

Copyright 2019 Xilinx, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""
from __builtin__ import True, False

#######################################################################################################################

MAX_CFG_STR_LEN = 150

#######################################################################################################################

import distutils.dir_util
import glob
import logging
from measurement.hostinterfaces import GridHostInterface
import opentuner
from opentuner.search.manipulator import ConfigurationManipulator, BooleanParameter, LogIntegerParameter, \
                                         PowerOfTwoParameter
from opentuner.resultsdb.models import Result
import os
import re
import shutil
import stat
from utils.kernelstructure import KernelStructure
import traceback
from xml.etree import ElementTree
import yaml

log = logging.getLogger(__name__)

#######################################################################################################################

class VivadoHLSInterface(opentuner.MeasurementInterface):
  "Measurement interface for Vivado HLS"

  def __init__(self, *pargs, **kwargs):
    "Initializes the measurement interface and performs a few sanity checks."
    
    self.tuner_root = kwargs.pop('tuner_root')

    super(VivadoHLSInterface, self).__init__(*pargs, **kwargs)

    self.host_interf = GridHostInterface(["80s*", "!60s", "*"])
    self.host_interf.interf = self

    self.parallel_compile = True
    self.log_cfg_enabled = None
    
    with open(self.args.pragma_file, 'r') as stream:
      self.pragmas = yaml.safe_load(stream)


  def compile(self, config_data, result_id):
    """Compiles one configuration.

    Parameters
    ----------
    config_data : dict
      Configuration
    result_id : int
      Number of desired result
    """

    log.info("Building configuration %d...", result_id)

    self.log_cfg(result_id, config_data)

    output_dir = self.args.output_dir + "/{0:04d}".format(result_id)
    os.makedirs(output_dir)

    distutils.dir_util.copy_tree(self.args.src_dir, output_dir)

    self.write_directives(output_dir + '/directives.tcl', config_data)
    self.write_defines(output_dir + '/defines.tcl', config_data)

    run_script = output_dir + "/compile_and_cosim.bash"
    self.fill_in_template(self.tuner_root + "/templates/compile_and_cosim.bash", run_script, output_dir = output_dir)
    os.chmod(run_script, os.stat(run_script).st_mode | stat.S_IXUSR)

    if not self.args.use_prebuilt:
      result = self.host_interf.run(run_script, output_dir, 'cholesky_' + str(result_id), 1, 2)

    else:
      distutils.dir_util.copy_tree(self.tuner_root + '/prebuilt/hls', output_dir)
  
      result = {'run_time': reduce(lambda x, y: float(x) + float(y), config_data.values())}
    
    return result


  def fill_in_template(self, template_filename, output_filename, **replacements):
    "Copies a template file and fills in fields surrounded by curly braces."

    with open(template_filename, "r") as template_file:
      template = template_file.read()

    template = template.format(**replacements)

    with open(output_filename, "w") as output_file:
      output_file.write(template)


  def run_precompiled(self, desired_result, inp, limit, compile_result, result_id):
    "Get metrics of a built HLS kernel."

    try:    
      output_dir = self.args.output_dir + "/{0:04d}".format(result_id)

      with open(output_dir + '/stdout.log', 'r') as input_file:
        report = []
        cosim_tb_output = []
        section = 'report'
        for line in input_file:
          if line.startswith(('INFO: [COSIM 212-333]', 'INFO: [COSIM 212-1000]')):
            section = 'report'
          if section == 'report':
            report.append(line)
          elif section == 'C TB output':
            cosim_tb_output.append(line)
          if line.startswith('INFO: [COSIM 212-302]'): 
            section = 'C TB output'
          elif line.startswith('INFO: [COSIM 212-316]'):
            section = 'Cosim TB output'
      report = ''.join(report)
      cosim_tb_output = ''.join(cosim_tb_output)

      match = re.search(r'^ERROR: \[(.*)\] (.*)\n', report, re.MULTILINE)
      if match:
        return self.report_error(result_id, match.group(1), match.group(2))
      
      match = re.search(r'^ERROR: (.*)\n', report, re.MULTILINE)
      if match:
        return self.report_error("ERROR", match.group(1))
    
      if not re.search(r'Exiting vivado_hls', report):
        return self.report_error(result_id, 'TIMEOUT', 'Build timed out.')

      cosim_log = glob.glob(output_dir + '/proj_cholesky/solution1/sim/report/cholesky_top_cosim.rpt')[0]
      with open(cosim_log, 'r') as input_file:
        for line in input_file:
          if 'Verilog' in line:
            tokens = line.split('|')
            latency = float(tokens[5].strip())

      tree = ElementTree.parse(output_dir + '/proj_cholesky/solution1/syn/report/csynth.xml')
      luts = int(tree.find('AreaEstimates/Resources/LUT').text)
      regs = int(tree.find('AreaEstimates/Resources/FF').text)
      brams = int(tree.find('AreaEstimates/Resources/BRAM_18K').text)
      dsps = int(tree.find('AreaEstimates/Resources/DSP48E').text)
    
      if getattr(desired_result.configuration, "extract_struct", False):
        kernel_struc = KernelStructure(output_dir)
        kernel_struc.match_pragmas(self.pragmas)
        kernel_struc.store(output_dir + "/krnl_struc.yml")

      if not self.args.no_cleanup:
        shutil.rmtree(output_dir + '/proj_cholesky')

      os.system("gzip " + output_dir + "/stdout.log " + output_dir + "/vivado_hls.log")

      if self.args.use_prebuilt:
        latency = compile_result['run_time']

      log.info('Latency of configuration %d: %f.', result_id, latency)
      return Result(state = 'OK', run_time = latency, luts = luts, regs = regs, brams = brams, dsps = dsps,
                    msg = 'Build was successful.')

    except:
      log.error(traceback.format_exc())
      return Result(state = 'EXCEPTION', msg = 'Unknown exception')


  def report_error(self, result_id, state, msg):
    "Put an error message in the log and create a Result object with the error."
    
    log.error('Configuration %d failed with error: %s (%s)', result_id, state, msg)
    return Result(state = state, msg = msg)


  def manipulator(self):
    "Returns an object that represents the parameters that can be tuned."
    
    self.param_map = {}
    self.disabled_inlines = []
    manipulator = ConfigurationManipulator()
    handlers = {"unroll": self.handle_add_unroll,
                "pipeline": self.handle_add_pipeline,
                "inline": self.handle_add_inline,
                "dataflow": self.handle_add_dataflow,
                "array_partition": self.handle_add_array_partition}
    for pragma in self.pragmas:
      handlers[pragma['type']](manipulator, pragma)
    return manipulator
  
  
  def handle_add_unroll(self, manipulator, pragma):
    "Add unroll parameter to manipulator."
    
    min_val, max_val = re.match(r'(\d)\s*-\s*(\d+)', pragma['factor']).groups()
    name = pragma['function'] + '|' + pragma['loop'] + '|unroll'
    manipulator.add_parameter(PowerOfTwoParameter(name, int(min_val), int(max_val), prior = 'inc'))
#    manipulator.add_parameter(LogIntegerParameter(name, int(min_val), int(max_val), prior = 'inc'))
    self.param_map[name] = pragma


  def handle_add_pipeline(self, manipulator, pragma):
    "Add pipeline parameter to manipulator."
    
    min_val, max_val = re.match(r'(\d)\s*-\s*(\d+)', pragma['ii']).groups()
    loop = pragma.get('loop')
    name = pragma['function'] + ('' if loop == None else '|' + loop) + '|pipeline'
    manipulator.add_parameter(LogIntegerParameter(name, int(min_val), int(max_val)))  
    self.param_map[name] = pragma
  
    manipulator.add_parameter(BooleanParameter(name + '_enable'))


  def handle_add_inline(self, manipulator, pragma):
    "Add inline parameter to manipulator."
    
    disable = pragma.get('disable')
    if disable == True:
      self.disabled_inlines.append(pragma['function'])
    else:
      name = pragma['function'] + '|inline'
      manipulator.add_parameter(BooleanParameter(name))
      self.param_map[name] = pragma

  def handle_add_dataflow(self, manipulator, pragma):
    "Add dataflow parameter to manipulator."
    
    loop = pragma.get('loop')
    name = pragma['function'] + ('' if loop == None else '|' + loop) + '|dataflow'
    manipulator.add_parameter(BooleanParameter(name))
    self.param_map[name] = pragma


  def handle_add_array_partition(self, manipulator, pragma):
    "Add array_partition parameter to manipulator."

    # Specifying a array in a loop is not supported because the arrays are all allocated in the beginning of the
    # function, so we have no way of locating the array in the schedule.    
    name = pragma['function'] + '|' + pragma['variable'] + '|partition'
    self.param_map[name + '_1'] = pragma
    number = 1
    for dimensions in pragma['dim']:
      min_val, max_val = re.match(r'(\d)\s*-\s*(\d+)', dimensions).groups()
      param = name + '_' + str(number)
      manipulator.add_parameter(LogIntegerParameter(param, int(min_val), int(max_val)))
      number += 1


  def write_directives(self, filename, config_data):
    "Writes all directives to a TCL file."
    
    handlers = {"unroll": self.handle_write_unroll,
                "pipeline": self.handle_write_pipeline,
                "inline": self.handle_write_inline,
                "dataflow": self.handle_write_dataflow,
                "array_partition": self.handle_write_array_partition}

    with open(filename, "w") as output_file:
      for param, value in config_data.items():
        pragma = self.param_map.get(param)
        if pragma != None:
          handlers[pragma['type']](output_file, pragma, value, config_data)
      for function in self.disabled_inlines:
        output_file.write("set_directive_inline " + function + " -off\n")
  
  
  def handle_write_unroll(self, output_file, pragma, value, _):
    "Write directive for unroll parameter to TCL file."
    
    if (value > 1):
      function = pragma['function']
      loop = pragma['loop']
      exit_check_option = '' if pragma.get('exit_check', True) else ' -skip_exit_check'
      output_file.write("set_directive_unroll " + function + "/" + loop + " -factor " + str(value) +
                        exit_check_option + "\n")


  def handle_write_pipeline(self, output_file, pragma, value, config_data):
    "Write directive for pipeline parameter to TCL file."
    
    function = pragma['function']
    loop = pragma.get('loop')
    name = function + ('' if loop == None else '|' + loop)
    if config_data[name + '|pipeline_enable']:
      location = function + ('' if loop == None else '/' + loop)
      output_file.write("set_directive_pipeline " + location + " -II " + str(value) + "\n")


  def handle_write_inline(self, output_file, pragma, value, _):
    "Write directive for inline parameter to TCL file."
    
    output_file.write("set_directive_inline " + pragma['function'] + ("\n" if value else " -off\n"))


  def handle_write_dataflow(self, output_file, pragma, value, _):
    "Write directive for dataflow parameter to TCL file."
    
    if value:
      loop = pragma.get('loop')
      location = pragma['function'] + ('' if loop == None else '/' + loop)
      output_file.write("set_directive_dataflow " + location + "\n")


  def handle_write_array_partition(self, output_file, pragma, _, config_data):
    "Write directive for array_partition parameter to TCL file."
    
    function = pragma['function']
    variable = pragma['variable']
    name = function + '|' + variable + '|partition'
    dimension = 1
    while True:
      param_name = name + '_' + str(dimension)
      factor = config_data.get(param_name)
      if factor == None:
        break
      if factor > 1:
        location = function + " " + variable
        options = "-type cyclic -dim " + str(dimension) + " -factor " + str(factor)
        output_file.write("set_directive_array_partition " + location + " " + options + "\n")
      dimension += 1


  def write_defines(self, filename, config_data):
    """Writes a TCL file that creates a variable with defines that can be passed to the compiler.
    
    Parameters
    ----------
    filename : str
      TCL file name
    config_data : dict
      Configuration
    """
    with open(filename, "w") as output_file:
      output_file.write('set defines "')
      for param, value in config_data.items():
        pragma = self.param_map.get(param)
        if pragma != None and pragma['type'] == 'unroll':
          function = pragma['function']
          loop = pragma['loop']
          output_file.write("-D UNROLL_FACTOR_{}_{}={}".format(function.upper(), loop.upper(), int(round(value))))
      output_file.write('"\n')
      
      
  def log_cfg(self, result_id, cfg):
    "Output the values of each configuration if the line would not be too long."
    
    text = str(cfg)
    if self.log_cfg_enabled == None:
      self.log_cfg_enabled = len(text) <= MAX_CFG_STR_LEN
    if self.log_cfg_enabled == True:
      log.info("Configuration %d is %s.", result_id, cfg)
