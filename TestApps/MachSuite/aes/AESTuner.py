#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC

import argparse
import glob
import logging
import math
import os
import re
import serial
import shutil
import stat
import subprocess
import sys
import threading

def find_tuner_root():
  """
  Returns the root directory of the HLS tuner repository in which the current working directory resides.
  """
  prefix = sys.path[0]
  while True:
    [prefix, last_dir] = os.path.split(prefix)
    if os.path.isdir(prefix + "/.git"):
      break
    if prefix == "/":
      raise RuntimeError("Cannot find root of HLS tuner workspace.")
  return prefix

tuner_root = find_tuner_root()
sys.path.insert(0, tuner_root + '/OpenTuner')

import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import FloatParameter
from opentuner import IntegerParameter
from opentuner import LogIntegerParameter
from opentuner import MeasurementInterface
from opentuner import Result
from opentuner.search.manipulator import BooleanParameter

log = logging.getLogger('AESTuner')

argparser = argparse.ArgumentParser(parents=opentuner.argparsers())
argparser.add_argument('--append', action = 'store_true', help = 'append new tuning run to existing runs')

class AESTuner(MeasurementInterface):
  """
  Main tuner class for AES benchmark of MachSuite
  """

  def __init__(self, *pargs, **kwargs):
    """
    Initializes a tuner object and performs a few sanity checks.
    """

    super(AESTuner, self).__init__(*pargs, **kwargs)

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

    self.make_file     = tuner_root + "/TestApps/MachSuite/aes/Sources/Makefile"
    self.output_root   = tuner_root + "/TestApps/MachSuite/aes/Output"
    self.template_path = tuner_root + "/Templates"

    self.fake_presynth     = True
    self.fake_synth        = True
    self.fake_impl         = False
    self.fake_build_source = tuner_root + '/Data'

    self.presynth_timeout = 15 * 60
    self.synth_timeout    = 30 * 60
    self.impl_timeout     = 30 * 60
    self.run_timeout      = 5 * 60

    self.presynth_retries = 5
    self.synth_retries    = 5
    self.impl_retries     = 5

    self.parallel_compile = True

    self.max_jobs = 4
    self.max_threads = 1
    self.max_mem_usage = 16

    self.serial_device   = '/dev/ttyUSB13'
    self.serial_baudrate = 115200

    self.fpga_host = 'hactar.seas.upenn.edu'

    old_data_found = False
    for name in os.listdir(self.output_root):
      path = self.output_root + '/' + name
      if os.path.isdir(path) and re.match('[0-9]{4}$', os.path.basename(path)):
        old_data_found = True

    if old_data_found and not args.append:
      raise RuntimeError("Old results were found.  Explicitly confirm appending the results using the --append" \
                         " command line arguments.")

    self.check_fpga_host()

  def manipulator(self):
    """
    Returns an object that represents the parameters that can be tuned.
    """

    manipulator = ConfigurationManipulator()
    manipulator.add_parameter(BooleanParameter("PIPELINE_SUB"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_ADDKEY"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_CPKEY"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_MIX"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_EXP1"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_EXP2"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_ECB1"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_ECB2"))
    manipulator.add_parameter(BooleanParameter("PIPELINE_ECB3"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_SUB", 1, 16))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ADDKEY", 1, 16))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_CPKEY", 1, 16))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_MIX", 1, 4))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_EXP1", 1, 3))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_EXP2", 1, 3))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB1", 1, 32))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB2", 1, 8))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB3", 1, 13))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_SUB", 1, 16))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ADDKEY", 1, 16))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_CPKEY", 1, 16))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_MIX", 1, 4))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_EXP1", 1, 3))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_EXP2", 1, 3))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB1", 1, 32))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB2", 1, 8))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB3", 1, 13))
    manipulator.add_parameter(EnumParameter("KERNEL_CLOCK", ['0', '1', '2', '3']))
    manipulator.add_parameter(EnumParameter("DATA_MOVER_CLOCK", ['0', '1', '2', '3']))
    return manipulator

  def compile(self, config_data, result_id):
    """
    Builds hardware and software for one configuration.
    """

    output_path = self.output_root + "/{0:04d}".format(result_id)
    os.mkdir(output_path)
    presynth_output_path = output_path + '/Presynth'
    synth_output_path = output_path + '/Synth'

    result = self.do_presynth(config_data, result_id, output_path, presynth_output_path)
    if result.state == 'POK':
      result = self.do_synth(result_id, output_path, presynth_output_path, synth_output_path)
    if result.state == 'SOK':
      result = self.do_impl(result_id, output_path, synth_output_path)

    return result

  def do_presynth(self, config_data, result_id, output_path, presynth_output_path):
    """
    Creates software and performs all hardware generation steps before RTL synthesis on one configuration, including
    HLS.
    """

    log.info("Presynthesize configuration %d...", result_id)

    build_script_template = self.template_path + '/Presynth.bash'
    build_script = presynth_output_path + '/Presynth.bash'
    qsub_output_log = presynth_output_path + '/QSub_output.log'
    qsub_error_log = presynth_output_path + '/QSub_error.log'
    build_output_log = presynth_output_path + '/Presynth_output.log'
    build_error_log = presynth_output_path + '/Presynth_error.log'

    for retry in range(0, self.presynth_retries):

      if retry > 0:
        log.info("Repeating presynthesis of configuration %d...", result_id)
        os.rename(presynth_output_path, output_path + '/Presynth_failed_' + str(retry - 1))


      if not self.fake_presynth:
        os.mkdir(presynth_output_path)
        self.create_presynth_scripts(config_data, build_script_template, build_script)
        self.run_on_grid(result_id, presynth_output_path, build_script, qsub_output_log, qsub_error_log,
                         build_output_log, build_error_log, "Presynth")
      else:
        shutil.copytree(self.fake_build_source + '/Good_presynth', presynth_output_path)

      result = self.get_presynth_result(qsub_error_log, build_output_log)

      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      if not result.state in ['PE0', 'PE1', 'PE2', 'PE?']:
        break

    if result.state == 'POK':
      log.info("Presynthesis of configuration %d was successful...", result_id)
    elif result.state == 'PTO':
      log.error("Presynthesis timeout on configuration %d", result_id)
    else:
      log.error("Presynthesis error on configuration %d", result_id)

    return result

  def create_presynth_scripts(self, config_data, script_template, script):
    """
    Creates scripts for presynthesis build step.
    """

    defines = ''
    for param, value in config_data.items():
      if param == 'DATA_MOVER_CLOCK':
        data_mover_clock = str(value)
      elif param == 'KERNEL_CLOCK':
        kernel_clock = str(value)
      elif re.match(r'PIPELINE_(?!II_).*', param):
        if value:
          defines += ' -D{0}'.format(param)
      else:
        defines += ' -D{0}={1}'.format(param, value)

    self.fill_in_template(script_template, script,
                          tuner_root       = tuner_root,
                          timeout          = self.presynth_timeout,
                          make_file        = self.make_file,
                          max_jobs         = self.max_jobs,
                          max_threads      = self.max_threads,
                          defines          = defines,
                          data_mover_clock = data_mover_clock,
                          kernel_clock     = kernel_clock)

  def get_presynth_result(self, qsub_error_log, build_output_log):
    """
    Analyzes the presynthesis output to determine the build result.
    """

    result = None

    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'PE0', msg = 'Cannot find presynthesis qsub error log.')

    if result == None and re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    elif re.search(r'Cannot create temporary directory.', lines) != None:
      result = Result(state = 'PE1', msg = 'Cannot create temporary directory for presynthesis.')

    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'PE2', msg = 'Cannot find presynthesis output log.')

    if result == None and re.search(r'Presynthesis timed out.', lines) != None:
      result = Result(state = 'PTO', msg = 'Presynthesis timed out.')
    elif re.search(r'\[XFORM 203-504\]', lines) != None:
      result = Result(state = 'PE3', msg = 'Too much unrolling')
    elif re.search(r'\[XFORM 203-1403\]', lines) != None:
      result = Result(state = 'PE4', msg = 'Too many load/store instructions')
    elif re.search(r'Presynthesis has completed successfully.', lines) == None:
      result = Result(state = 'PE?', msg = 'Unknown presynthesis error')
    else:
      result = Result(state = 'POK', msg = 'Presynthesis was successful.')

    return result

  def do_synth(self, result_id, output_path, presynth_output_path, synth_output_path):
    """
    Performs RTL synthesis of one configuration.
    """

    log.info("Synthesizing configuration %d...", result_id)

    shell_script_template = self.template_path + '/Synth.bash'
    shell_script = synth_output_path + '/Synth.bash'
    tcl_script_template = self.template_path + '/Synth.tcl'
    tcl_script = synth_output_path + '/Synth.tcl'
    qsub_output_log = synth_output_path + '/QSub_output.log'
    qsub_error_log = synth_output_path + '/QSub_error.log'
    build_output_log = synth_output_path + '/Synth_output.log'
    build_error_log = synth_output_path + '/Synth_error.log'

    for retry in range(0, self.synth_retries):

      if retry > 0:
        log.info("Repeating synthesis of configuration %d...", result_id)
        os.rename(synth_output_path, output_path + '/Synth_failed_' + str(retry - 1))
    
      if not self.fake_synth:
        os.mkdir(synth_output_path)
        self.create_synth_scripts(presynth_output_path, shell_script_template, shell_script, tcl_script_template,
                                  tcl_script)
        self.run_on_grid(result_id, synth_output_path, shell_script, qsub_output_log, qsub_error_log, build_output_log,
                         build_error_log, "Synth")
      else:
        shutil.copytree(self.fake_build_source + '/Good_synth', synth_output_path)

      result = self.get_synth_result(qsub_error_log, build_output_log)

      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      if not result.state in ['SE0', 'SE1', 'SE2', 'SE?']:
        break

    if result.state == 'SOK':
      log.info("Synthesis of configuration %d was successful...", result_id)
    elif result.state == 'STO':
      log.error("Synthesis timeout on configuration %d", result_id)
    else:
      log.error("Synthesis error on configuration %d", result_id)

    return result

  def create_synth_scripts(self, presynth_output_path, shell_script_template, shell_script, tcl_script_template, tcl_script):
    """
    Creates scripts for RTL synthesis step.
    """

    self.fill_in_template(shell_script_template, shell_script,
                          tuner_root           = tuner_root,
                          presynth_output_path = presynth_output_path,
                          timeout              = self.synth_timeout,
                          tcl_script           = tcl_script)

    self.fill_in_template(tcl_script_template, tcl_script,
                          max_jobs    = self.max_jobs,
                          max_threads = self.max_threads)

  def get_synth_result(self, qsub_error_log, build_output_log):
    """
    Analyzes the synthesis output to determine the build result.
    """

    result = None

    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'SE0', msg = 'Cannot find synthesis qsub error log.')

    if result == None and re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    elif re.search(r'Cannot create temporary directory.', lines) != None:
      result = Result(state = 'SE1', msg = 'Cannot create temporary directory for synthesis.')

    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'SE2', msg = 'Cannot find synthesis output log.')

    if result == None and re.search(r'Synthesis timed out.', lines) != None:
      result = Result(state = 'STO', msg = 'Synthesis timed out.')
    elif re.search(r'Synthesis has completed successfully.', lines) == None:
      result = Result(state = 'SE?', msg = 'Unknown synthesis error')
    else:
      result = Result(state = 'SOK', msg = 'Synthesis was successful.')

    return result

  def do_impl(self, result_id, output_path, synth_output_path):
    """
    Performs implementation step on one configuration.
    """

    log.info("Implementing configuration %d...", result_id)

    impl_output_path = output_path + '/Impl'
    shell_script_template = self.template_path + '/Impl.bash'
    shell_script = impl_output_path + '/Impl.bash'
    tcl_script_template = self.template_path + '/Impl.tcl'
    tcl_script = impl_output_path + '/Impl.tcl'
    qsub_output_log = impl_output_path + '/QSub_output.log'
    qsub_error_log = impl_output_path + '/QSub_error.log'
    build_output_log = impl_output_path + '/Impl_output.log'
    build_error_log = impl_output_path + '/Impl_error.log'

    for retry in range(0, self.impl_retries):

      if retry > 0:
        log.info("Repeating implementation of configuration %d...", result_id)
        os.rename(impl_output_path, output_path + '/Impl_failed_' + str(retry - 1))
    
      if not self.fake_impl:
        os.mkdir(impl_output_path)
        self.create_impl_scripts(synth_output_path, shell_script_template, shell_script, tcl_script_template, tcl_script)
        self.run_on_grid(result_id, impl_output_path, shell_script, qsub_output_log, qsub_error_log, build_output_log,
                         build_error_log, "Impl")
      else:
        shutil.copytree(self.fake_build_source + '/Good_impl', impl_output_path)

      result = self.get_impl_result(qsub_error_log, build_output_log)

      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      if not result.state in ['IE0', 'IE1', 'IE2', 'IE?']:
        break

    if result.state == 'IOK':
      log.info("Implementation of configuration %d was successful...", result_id)
    elif result.state == 'ITO':
      log.error("Implementation timeout on configuration %d", result_id)
    elif result.state == 'TIMING':
      log.error('Timing not met on configuration %d', result_id)
    else:
      log.error("Implementation error on configuration %d", result_id)

    return result

  def create_impl_scripts(self, synth_output_path, shell_script_template, shell_script, tcl_script_template, tcl_script):
    """
    Creates scripts for implementation step.
    """

    self.fill_in_template(shell_script_template, shell_script,
                          tuner_root        = tuner_root,
                          synth_output_path = synth_output_path,
                          timeout           = self.impl_timeout,
                          tcl_script        = tcl_script)

    self.fill_in_template(tcl_script_template, tcl_script,
                          max_jobs    = self.max_jobs,
                          max_threads = self.max_threads)

  def get_impl_result(self, qsub_error_log, build_output_log):
    """
    Analyzes the implementation output to determine the build result.
    """

    result = None

    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'IE0', msg = 'Cannot find implementation qsub error log.')

    if result == None and re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    elif re.search(r'Cannot create temporary directory.', lines) != None:
      result = Result(state = 'IE1', msg = 'Cannot create temporary directory for implementation.')

    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      result = Result(state = 'IE2', msg = 'Cannot find implementation output log.')

    if result == None and re.search(r'Implementation timed out.', lines) != None:
      result = Result(state = 'ITO', msg = 'Implementation timed out.')
    elif re.search(r'\[Place 30-640\]', lines) != None:
      result = Result(state = 'IE3', msg = 'Too many BRAMs')
    elif re.search(r'\[DRC PDCY-4\]', lines) != None:
      result = Result(state = 'IE4', msg = 'Unconnected carry input')
    elif re.search(r'\[Timing 38-282\]', lines) != None:
      result = Result(state = 'TIMING', msg = 'Timing constraints not met')
    elif re.search(r'Implementation has completed successfully.', lines) == None:
      result = Result(state = 'IE?', msg = 'Unknown implementation error')
    else:
      result = Result(state = 'IOK', msg = 'Implementation was successful.')

    return result

  def fill_in_template(self, template_filename, output_filename, **replacements):
    """
    Copies a template file and fills in fields surrounded by curly braces.
    """

    with open(template_filename, "r") as template_file:
      template = template_file.read()

    template = template.format(**replacements)

    with open(output_filename, "w") as output_file:
      output_file.write(template)

  def run_precompiled(self, desired_result, inp, limit, compile_result,
                      result_id):
    """
    Tests one configuration on the FPGA.
    """

    if compile_result.state != 'IOK':
      return compile_result

    log.info("Running configuration %d...", result_id)

    output_path = self.output_root + "/{0:04d}".format(result_id)

    # SDSoC 2017.1 is not loading symbols from ELF file properly, so we have to
    # obtain the address of the exit function ourselves.  Otherwise, we could
    # just have used the command "bpadd -addr &exit" in TCL.
    with open(self.make_file, 'r') as file_handle:
      data = file_handle.read()
    self.target_file = re.search(r'^EXE_FILE\s*:=\s*(\S+)', data, re.MULTILINE).group(1)
    symbols = subprocess.check_output(['nm', output_path + '/' + self.target_file])
    exit_address = re.search(r'^(\S+) T exit$', symbols, re.MULTILINE).group(1)
    
    TCL_script = output_path + '/Run.tcl'
    with open(TCL_script, 'w') as script_file:
      script_file.write('''\
connect
source {output_path}/_sds/p0/ipi/zed.sdk/ps7_init.tcl
targets -set -nocase -filter {{name =~"APU*" && jtag_cable_name =~ "Digilent Zed*"}} -index 0
rst -system
after 3000
targets -set -filter {{jtag_cable_name =~ "Digilent Zed*" && level==0}} -index 1
fpga -file {target_file}.bit
targets -set -nocase -filter {{name =~"APU*" && jtag_cable_name =~ "Digilent Zed*"}} -index 0
loadhw {output_path}/_sds/p0/ipi/zed.sdk/zed.hdf
ps7_init
ps7_post_config
targets -set -nocase -filter {{name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed*"}} -index 0
dow {target_file}
bpadd -addr 0x{exit_address}
con -block
'''.format(output_path = output_path, target_file = self.target_file,
                     exit_address = exit_address))

    run_script = output_path + '/Run.sh'
    with open(run_script, 'w') as script_file:
      script_file.write('''\
#!/bin/bash -e
source {sdsoc_root}/settings64.sh
cd {output_path}
stty -F {serial_device} {serial_baudrate} raw
cat {serial_device} > Serial_output.log &
sdx -batch -source {TCL_script}
kill $!
'''.format(sdsoc_root = self.sdsoc_root, output_path = output_path,
           serial_device = self.serial_device, serial_baudrate =
           self.serial_baudrate, TCL_script = TCL_script))
    os.chmod(run_script, os.stat(run_script).st_mode | stat.S_IXUSR)

    try:
      run_result = self.call_program('ssh ' + self.fpga_host + ' ' + run_script,
                                     limit = self.run_timeout)
    except OSError:
      return Result(state='RE?', msg = 'Unknown error while running.')

    with open(output_path + '/Run_output.log', 'w') as log_file:
      log_file.write(run_result['stdout'])
    with open(output_path + '/Run_error.log', 'w') as log_file:
      log_file.write(run_result['stderr'])

    if run_result['returncode'] != 0 and run_result['timeout']:
      log.error('Run timeout on configuration %d', result_id)
      return Result(state='RTO', msg = 'Timeout while running.')

    test_failed = True
    cycles = float('inf')
    with open(output_path + '/Serial_output.log', 'r') as output_file:
      for line in output_file:
        if line == "TEST PASSED\r\n":
          test_failed = False
        match = re.match(r'The hardware test took (\S+) cycles.\r\n', line)
        if match != None:
          cycles = match.group(1)
        else:
          log.error('Serial port produced invalid output.', result_id)
          return Result(state = 'RE2')          

    if run_result['returncode'] != 0 or test_failed:
      log.error('Run error on configuration %d', result_id)
      return Result(state = 'RE1')

    log.info("Run of configuration %d was successful...", result_id)

    return Result(state = 'OK', msg = 'Test successful.', time = cycles)

  def check_fpga_host(self):
    """
    Check whether the FPGA is ready to be used.
    """

    check_script = self.output_root + '/Check_FPGA_host.sh'
    with open(check_script, 'w') as script_file:
      script_file.write('''\
#!/bin/bash -e
[ ! -c '{serial_device}' ] && echo "Not found" && exit
[ ! -r '{serial_device}' -o ! -w '{serial_device}' ] && echo 'Not accessible' && exit
echo "Success"
'''.format(serial_device = self.serial_device))
    os.chmod(check_script, os.stat(check_script).st_mode | stat.S_IXUSR)

    output = subprocess.check_output(['ssh', self.fpga_host, check_script])
    if output == 'Not found\n':
      raise RuntimeError("The serial device could not be found.  The FPGA may" \
                         " not be powered on.")
    elif output == 'Not accessible\n':
      raise RuntimeError("The user has no permission to access the serial" \
                         " device.  Perhaps the user must be added to the" \
                         " 'dialout' group.")
    elif output != 'Success\n':
      raise RuntimeError("Check_FPGA_host.sh returned an unknown error.")

  def run_on_grid(self, result_id, output_path, build_script, qsub_output_log, qsub_error_log, build_output_log,
                  build_error_log, build_step):
    """
    Run a script on the IC grid.  Initially, jobs are only issued to the 70s because they have the highest
    performance.  If they cannot schedule the jobs immediately, we issue the scripts to icsafe machines too.  If
    they cannot schedule jobs immediately either, the jobs are issued to any available machine.
    """

    build_result = self.run_on_grid_core(result_id, output_path, build_script, qsub_output_log, qsub_error_log,
                                         build_output_log, build_error_log, build_step, '-q \'70s*\' -now y')

    if self.grid_unavailable(build_result):
      log.info('No 70s are available.  Configuration %d will fall back to icsafe machines.', result_id)
      build_result = self.run_on_grid_core(result_id, output_path, build_script, qsub_output_log, qsub_error_log,
                                           build_output_log, build_error_log, build_step, '-q \'!60s*\' -now y')

    if self.grid_unavailable(build_result):
      log.info('No icsafe machines are available.  Configuration %d will fall back to 60s.', result_id)
      self.run_on_grid_core(result_id, output_path, build_script, qsub_output_log, qsub_error_log, build_output_log,
                            build_error_log, build_step, '')
      
  def run_on_grid_core(self, result_id, output_path, build_script, qsub_output_log, qsub_error_log, build_output_log,
                       build_error_log, build_step, qsub_params):
    """
    Run a script on the IC grid.  All output is stored in log files.
    """

    max_mem_per_core = self.max_mem_usage / self.max_jobs
    build_cmd_template = 'qsub -S /bin/bash' \
                         ' -wd ' + output_path + \
                         ' -o ' + build_output_log + \
                         ' -e ' + build_error_log + \
                         ' -N ' + build_step + '_' + str(result_id) + \
                         ' {}' \
                         ' -sync y' \
                         ' -pe onenode ' + str(self.max_jobs) + \
                         ' -l mem=' + str(max_mem_per_core) + 'g' \
                         ' ' + build_script

    build_cmd = build_cmd_template.format(qsub_params)
    build_result = self.call_program(build_cmd)

    with open(qsub_output_log, 'w') as log_file:
      log_file.write(build_result['stdout'])
    with open(qsub_error_log, 'w') as log_file:
      log_file.write(build_result['stderr'])

    return build_result

  def grid_unavailable(self, build_result):
    """
    Returns True if the output of qsub indicates that a job cannot be executed immediately.
    """
    output = build_result['stderr']
    return re.search("Your qsub request could not be scheduled", output) != None

  def save_final_config(self, configuration):
    """
    Store the final configuration in a JSON file.
    """
    self.manipulator().save_to_file(configuration.data, 'aes_final_config.json')

  def cleanup(self, result_id):
    """
    Remove any files that were left behind on /scratch/local.
    """

    output_path = self.output_root + "/Build_{0:04d}".format(result_id)
    host_file = output_path + '/Host.txt'

    if os.path.isfile(host_file):
      with open(host_file, 'r') as file_handle:
        info = file_handle.readline()
      host, temp_dir = re.search(r'(\S+)\s+(\S+)', info).groups()

      cleanup_script = output_path + '/Cleanup.sh'
      with open(cleanup_script, 'w') as cleanup_file:
        cleanup_file.write('''\
#!/bin/bash -e
[[ "{temp_dir}" != /scratch/local* ]] && exit 1
[ ! -d {temp_dir} ] && exit 0
[ -n "$(find {temp_dir} -prune -empty -type d 2> /dev/null)" ] && exit 0
shopt -s dotglob
mv {temp_dir}/* .
rmdir {temp_dir}
'''.format(temp_dir = temp_dir))

      subprocess.check_output(['qsub', '-S', '/bin/bash', \
                              '-wd', output_path, \
                              '-o', output_path + '/Cleanup_output.log', \
                              '-e', output_path + '/Cleanup_error.log', \
                              '-N', 'Cleanup_' + str(result_id), \
                              '-q', '*@' + host + '*', \
                              cleanup_script])

if __name__ == '__main__':
  opentuner.init_logging()
  for handler in logging.getLogger().handlers:
    handler.setLevel(logging.INFO)
  args = argparser.parse_args()
  tuner = AESTuner
  tuner.main(args)

