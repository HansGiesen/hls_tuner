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
import opentuner
from opentuner.search.manipulator import ConfigurationManipulator, BooleanParameter, LogIntegerParameter, \
                                         PowerOfTwoParameter
from opentuner.resultsdb.models import Result
import os
import re
import shutil
import stat
from utils.kernelstructure import KernelStructure
import yaml

log = logging.getLogger(__name__)

#######################################################################################################################

class VivadoHLSInterface(opentuner.MeasurementInterface):
  "Measurement interface for Vivado HLS"

  def __init__(self, *pargs, **kwargs):
    "Initializes the measurement interface and performs a few sanity checks."
    
    self.tuner_root = kwargs.pop('tuner_root')

    super(VivadoHLSInterface, self).__init__(*pargs, **kwargs)

    self.batch_compile = True
    self.test_iter = 1
    self.log_cfg_enabled = None
    
    with open(self.args.pragma_file, 'r') as stream:
      self.pragmas = yaml.safe_load(stream)


  def compile_batch(self, args):
    "Compiles one batch of configurations."

    cfgs = ", ".join([str(arg[1]) for arg in args])
    log.info("Building configurations %s...", cfgs)

    batch_dir = self.args.output_dir + "/Batches/{0:04d}".format(self.test_iter)
    os.makedirs(batch_dir)
    
    test_list_file = batch_dir + "/Tests.txt"

    with open(test_list_file, "w") as output_file:
      for config_data, result_id in args:
        
        self.log_cfg(result_id, config_data)

        src_dir = self.args.output_dir + "/Sources/{0:04d}".format(result_id)
        os.makedirs(src_dir)

        distutils.dir_util.copy_tree(self.args.src_dir, src_dir)

        self.write_directives(src_dir + '/directives.tcl', config_data)
        self.write_defines(src_dir + '/defines.tcl', config_data)
        
        output_file.write(src_dir + "\n")
      
    output_dir = self.args.output_dir + "/Output"
    try:
      os.makedirs(output_dir)
    except os.error:
      pass
    
    run_script = batch_dir + "/Compile_and_cosim.bash"
    self.fill_in_template(self.tuner_root + "/Templates/Compile_and_cosim.bash", run_script,
                          src_dir = self.args.src_dir, test_list_file = test_list_file,
                          output_dir = output_dir)
    os.chmod(run_script, os.stat(run_script).st_mode | stat.S_IXUSR)

    if not self.args.use_prebuilt:
      result = self.call_program(run_script)
  
      with open(batch_dir + '/Stdout.log', 'w') as output_file:
        output_file.write(result['stdout'])
      with open(batch_dir + '/Stderr.log', 'w') as output_file:
        output_file.write(result['stderr'])
        
      results = [result] * len(args)
  
    else:
      results = []
      for config_data, result_id in args:
        output_dir = self.args.output_dir + "/Output/{0:04d}".format(result_id)
        
        distutils.dir_util.copy_tree(self.tuner_root + '/Prebuilt/HLS', output_dir)
  
        results.append({'run_time': reduce(lambda x, y: float(x) + float(y), config_data.values())})
        
    self.test_iter += 1
    
    return results


  def fill_in_template(self, template_filename, output_filename, **replacements):
    "Copies a template file and fills in fields surrounded by curly braces."

    with open(template_filename, "r") as template_file:
      template = template_file.read()

    template = template.format(**replacements)

    with open(output_filename, "w") as output_file:
      output_file.write(template)


  def run_precompiled(self, desired_result, inp, limit, compile_result, result_id):
    "Get metrics of a built HLS kernel."
    
    output_dir = self.args.output_dir + "/Output/{0:04d}".format(result_id)

    output_log = glob.glob(output_dir + '/*.OUTPUT')[0]
    try:
      with open(output_log, 'r') as input_file:
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
    except OSError:
      return self.report_error(result_id, 'E1', 'Output log is missing.')
    report = ''.join(report)
    cosim_tb_output = ''.join(cosim_tb_output)

    match = re.search(r'^ERROR: \[(.*)\] (.*)\n', report, re.MULTILINE)
    if match:
      return self.report_error(result_id, match.group(1), match.group(2))
      
    match = re.search(r'^ERROR: (.*)\n', report, re.MULTILINE)
    if match:
      return self.report_error("E7", match.group(1))
    
    if not re.search(r'INFO: Finished writing New_DB_qor file', report):
      return self.report_error(result_id, 'TIMEOUT', 'Build timed out.')

    metrics = re.findall(r'^VH_(\S+) : (\d+)$', report, re.MULTILINE)
    metrics = {metric: value for metric, value in metrics}

    match = re.search(r'^Test iteration (\d)+ was successful.', cosim_tb_output, re.MULTILINE)
    if match:
      test = match.group(1)
      cosim_log = glob.glob(output_dir + '/*/proj/sol1/sim/report/verilog/result.transaction.rpt')[0]
      with open(cosim_log, 'r') as input_file:
        for line in input_file:
          tokens = line.split()
          if tokens[1] == test + ':':
            latency = float(tokens[2])
    else:
      if "Worst-caseLatency" not in metrics:
        return self.report_error(result_id, 'E2', 'Cannot find latency in output log.')
      latency = float(metrics['Worst-caseLatency'])
    
    if "LUT" not in metrics:
      return self.report_error(result_id, 'E3', 'Cannot find LUT count in output log.')
    luts = int(metrics['LUT'])

    if "FF" not in metrics:
      return self.report_error(result_id, 'E4', 'Cannot find flip-flop count in output log.')
    regs = int(metrics['FF'])

    if "BRAM_18K" not in metrics:
      return self.report_error(result_id, 'E5', 'Cannot find BRAM count in output log.')
    brams = int(metrics['BRAM_18K'])

    if "DSP48E" not in metrics:
      return self.report_error(result_id, 'E6', 'Cannot find DSP count in output log.')
    dsps = int(metrics['DSP48E'])

    if getattr(desired_result.configuration, "extract_struct", False):
      kernel_struc = KernelStructure(output_dir)
      kernel_struc.match_pragmas(self.pragmas)
      kernel_struc.store(output_dir + "/KernelStruc.yml")

    build_dir = output_log[:-7]
    if not self.args.no_cleanup:
      shutil.rmtree(build_dir)
      
    os.system("gzip {0}.OUTPUT {0}.STDOUT".format(build_dir))

    if self.args.use_prebuilt:
      latency = compile_result['run_time']
    log.info('Latency of configuration %d: %f.', result_id, latency)
    return Result(state = 'OK', run_time = latency, luts = luts, regs = regs, brams = brams, dsps = dsps,
                  msg = 'Build was successful.')


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
