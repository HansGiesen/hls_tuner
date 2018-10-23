#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC

import argparse
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
  prefix = sys.path[0]
  while True:
    [prefix, last_dir] = os.path.split(prefix)
    if os.path.isdir(prefix + "/.git"):
      break
    if prefix == "/":
      raise RuntimeError("Cannot find root of HLS tuner workspace.")
  return prefix

hls_tuner_root = find_tuner_root();
sys.path.insert(0, hls_tuner_root + '/OpenTuner')

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
argparser.add_argument('--append', action = 'store_true',
                       help = 'append new tuning run to existing runs')

class AESTuner(MeasurementInterface):

  def __init__(self, *pargs, **kwargs):

    super(AESTuner, self).__init__(*pargs, **kwargs)

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

    self.make_file   = hls_tuner_root + "/TestApps/MachSuite/aes/Sources/Makefile"
    self.output_root = hls_tuner_root + "/TestApps/MachSuite/aes/Output"

    self.fake_build        = False
    self.fake_build_source = hls_tuner_root + '/Data/Successful_build'

    self.build_timeout = 120 * 60
    self.run_timeout   = 5 * 60

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
      if os.path.isdir(path) and re.match('Build_', os.path.basename(path)):
        old_data_found = True

    if old_data_found and not args.append:
      raise RuntimeError("Old results were found.  Explicitly confirm" \
                         " appending the results using the --append command" \
                         " line arguments.")

    self.check_fpga_host()

  def manipulator(self):

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
    manipulator.add_parameter(EnumParameter("ACCELERATOR_CLOCK", ['0', '1', '2', '3']))
    manipulator.add_parameter(FloatParameter("ACCELERATOR_UNCERTAINTY", 0, 100))
    manipulator.add_parameter(EnumParameter("DATA_MOVER_CLOCK", ['0', '1', '2', '3']))
    return manipulator

  def compile_and_run(self, desired_result, inp, limit):

    cfg = desired_result.configuration.data
    compile_result = self.compile(cfg, 0)
    return self.run_precompiled(desired_result, inp, limit, compile_result, 0)

  def compile(self, config_data, result_id):

    log.info("Building configuration %d...", result_id)

    output_path = self.output_root + "/Build_{0:04d}".format(result_id)
    os.mkdir(output_path)

    defines = ''
    for param, value in config_data.items():
      if param == 'DATA_MOVER_CLOCK':
        data_mover_clock = str(value)
      elif param == 'ACCELERATOR_CLOCK':
        accelerator_clock = str(value)
      elif param == 'ACCELERATOR_UNCERTAINTY':
        accelerator_uncertainty = str(value)
      elif re.match(r'PIPELINE_(?!II_).*', param):
        if value:
          defines += ' -D{0}'.format(param)
      else:
        defines += ' -D{0}={1}'.format(param, value)

    build_script = output_path + '/Build.sh'
    with open(build_script, 'w') as script_file:
      script_file.write('''\
#!/bin/bash -e
Exit_handler()
{{
  EXIT_VALUE=$?
  [ ${{EXIT_VALUE}} == 124 ] && echo "Build timed out."
  exit ${{EXIT_VALUE}}
}}
trap Exit_handler exit
export HLS_TUNER_ROOT={hls_tuner_root}
DIR=$(mktemp -d -p /scratch/local)
echo $(hostname) ${{DIR}} > Host.txt
cd ${{DIR}}
# The /usr/bin/timeout tool changes its process group, which means that the
# children do not receive TERM signals, so we use a custom timeout script.
${{HLS_TUNER_ROOT}}/Scripts/Timeout.sh -t {build_timeout} \\
  make -f {make_file} clean all \\
  JOBS={max_jobs} \\
  THREADS={max_threads} \\
  HLS_TUNER_DEFINES='{defines}' \\
  DATA_MOVER_CLOCK={data_mover_clock} \\
  ACCELERATOR_CLOCK={accelerator_clock}
cd -
mv ${{DIR}}/{{.[!.],}}* .
rmdir ${{DIR}} 
'''.format(hls_tuner_root = hls_tuner_root,
           build_timeout = self.build_timeout,
           make_file = self.make_file,
           max_jobs = self.max_jobs,
           max_threads = self.max_threads,
           defines = defines,
           data_mover_clock = data_mover_clock,
           accelerator_clock = accelerator_clock))

    with open(output_path + '/aes.tcl', 'w') as script_file:
      script_file.write('set_clock_uncertainty ' + accelerator_uncertainty + '%\n')

    with open(self.make_file, 'r') as file_handle:
      data = file_handle.read()
    self.target_file = re.search(r'^EXE_FILE\s*:=\s*(\S+)', data, re.MULTILINE).group(1)

    for attempt in range(0, 5):

      if attempt > 0:
        log.info("Repeating build of configuration %d...", result_id)

        backup_path = output_path + '/Attempt_' + str(attempt)
        os.mkdir(backup_path)
        for filename in os.listdir(output_path):
          if not filename.startswith('Attempt_') and not filename == 'Build.sh':
            os.rename(output_path + '/' + filename, backup_path + '/' + filename)

      if not self.fake_build:

        build_result = self.run_on_grid(result_id, output_path, build_script,
                                        '-q \'70s*\' -now y')

        if self.grid_unavailable(build_result):
          log.info('No 70s are available.  Configuration %d will fall back to' \
                 ' icsafe machines.', result_id)
          build_result = self.run_on_grid(result_id, output_path, build_script,
                                         '-q \'!60s*\'')

        if self.grid_unavailable(build_result):
          log.info('No icsafe machines are available.  Configuration %d will'
                   ' fall back to 60s.', result_id)
          build_result = self.run_on_grid(result_id, output_path, build_script,
                                         '')

      else:
        shutil.copy(self.fake_build_source + '/Build_output.log',
                    output_path)
        shutil.copy(self.fake_build_source + '/' + self.target_file,
                    output_path)
        shutil.copy(self.fake_build_source + '/' + self.target_file + '.bit',
                    output_path)
        os.makedirs(output_path + '/_sds/p0/ipi/zed.sdk')
        shutil.copy(self.fake_build_source + '/_sds/p0/ipi/zed.sdk/ps7_init.tcl',
                    output_path + '/_sds/p0/ipi/zed.sdk')
        shutil.copy(self.fake_build_source + '/_sds/p0/ipi/zed.sdk/zed.hdf',
                    output_path + '/_sds/p0/ipi/zed.sdk')
        build_result = {'returncode': 0}

      try:
        with open(output_path + '/Build_output.log', 'r') as log_file:
          lines = log_file.read()
      except:
        code = 'LE?'
        return code

      if re.search(r'Build timed out.', lines) != None:
        result = Result(state = 'BTO', msg = 'Build timed out.')
      elif re.search(r'\[Place 30-640\]', lines) != None:
        result = Result(state = 'BE0', msg = 'Too many LUTs or BRAMs')
      elif re.search(r'\[SCHED 204-80\]', lines) != None:
        result = Result(state = 'BE1', msg = 'Dependency error')
      elif re.search(r'\[XFORM 203-504\]', lines) != None:
        result = Result(state = 'BE2', msg = 'Too much unrolling')
      elif re.search(r'\[XFORM 203-1403\]', lines) != None:
        result = Result(state = 'BE3',
                        msg = 'Too many load/store instructions')
      elif re.search(r'\[Timing 38-282\]', lines) != None:
        result = Result(state = 'TIMING', msg = 'Timing constraints not met')
      elif re.search(r'\[Timing 38-246\]', lines) != None:
        result = Result(state = 'BE5', msg = 'Thread error')
      elif re.search(r'\[Common 17-179\]', lines) != None:
        result = Result(state = 'BE9', msg = 'Fork failed.')
      elif re.search(r'Scripts Generated : progress 0%', lines) != None:
        result = Result(state = 'BE6',
                        msg = 'Unknown error at 0% of bitstream generation')
      elif re.search(r'Moving function[^\n]*\n[^\n]*failed$', lines,
                     re.MULTILINE) != None:
        result = Result(state = 'BE7',
                        msg = 'Unknown error while moving function')
      elif re.search(r'This may take some time[^\n]*\n[^\n]*failed$', lines,
                     re.MULTILINE) != None:
        result = Result(state = 'BE4',
                        msg = 'Unknown error while generating bitstream')
      elif re.search(r'Finished building target:', lines) == None:
        result = Result(state = 'BE?', msg = 'Unknown build error')
      else:
        result = Result(state = 'OK', msg = 'Build was successful.')

      log.info("Build %d, attempt %d: %s (%s)", result_id, attempt, result.msg,
               result.state)

      if not result.state in ['BE4', 'BE5', 'BE6', 'BE7', 'BE9', 'BE?']:
        break

    if result.state == 'OK':
      log.info("Build of configuration %d was successful...", result_id)
    elif result.state == 'BTO':
      log.error("Build timeout on configuration %d", result_id)
    elif result.state == 'TIMING':
      log.error('Timing not met on configuration %d', result_id)
    else:
      log.error("Build error on configuration %d", result_id)

    return result

  def run_precompiled(self, desired_result, inp, limit, compile_result,
                      result_id):

    if compile_result.state != 'OK':
      return compile_result

    log.info("Running configuration %d...", result_id)

    output_path = self.output_root + "/Build_{0:04d}".format(result_id)

    # SDSoC 2017.1 is not loading symbols from ELF file properly, so we have to
    # obtain the address of the exit function ourselves.  Otherwise, we could
    # just have used the command "bpadd -addr &exit" in TCL.
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
      
  def run_on_grid(self, result_id, output_path, build_script, qsub_params):

    max_mem_per_core = self.max_mem_usage / self.max_jobs
    build_cmd_template = 'qsub -S /bin/bash' \
                         ' -wd ' + output_path + \
                         ' -o ' + output_path + '/Build_output.log' + \
                         ' -e ' + output_path + '/Build_error.log' + \
                         ' -N Build_' + str(result_id) + \
                         ' {}' \
                         ' -sync y' \
                         ' -pe onenode ' + str(self.max_jobs) + \
                         ' -l mem=' + str(max_mem_per_core) + 'g' \
                         ' ' + build_script

    build_cmd = build_cmd_template.format(qsub_params)
    build_result = self.call_program(build_cmd)

    with open(os.path.join(output_path, 'Launch_output.log'), 'a') as log_file:
      log_file.write(build_result['stdout'])
    with open(os.path.join(output_path, 'Launch_error.log'), 'a') as log_file:
      log_file.write(build_result['stderr'])

    return build_result

  def grid_unavailable(self, build_result):
    output = build_result['stderr']
    return re.search("Your qsub request could not be scheduled", output) != None

  def save_final_config(self, configuration):
    self.manipulator().save_to_file(configuration.data, 'aes_final_config.json')

if __name__ == '__main__':
  opentuner.init_logging()
  for handler in logging.getLogger().handlers:
    handler.setLevel(logging.INFO)
  args = argparser.parse_args()
  tuner = AESTuner
  tuner.main(args)

