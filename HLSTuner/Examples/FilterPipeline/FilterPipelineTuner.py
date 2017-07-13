#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC

import opentuner
import os
import subprocess
import time
import shutil
import re
import logging
import argparse
import threading
import serial

from opentuner import ConfigurationManipulator
from opentuner import LogIntegerParameter
from opentuner import IntegerParameter
from opentuner import EnumParameter
from opentuner import MeasurementInterface
from opentuner import Result

log = logging.getLogger('FilterPipelineTuner')

argparser = argparse.ArgumentParser(parents=opentuner.argparsers())
argparser.add_argument('--append', action = 'store_true',
                       help = 'append new tuning run to existing runs')

class FilterPipelineTuner(MeasurementInterface):

  def __init__(self, *pargs, **kwargs):

    super(FilterPipelineTuner, self).__init__(*pargs, **kwargs)

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

    self.hls_tuner_root = os.environ["HLS_TUNER_ROOT"]
    if self.hls_tuner_root == "":
      raise RuntimeError("Environment variable HLS_TUNER_ROOT was not set.")

    self.make_file   = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "FilterPipeline", "makefile")
    self.output_root = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "FilterPipeline")

    self.build_timeout = 30 * 60
    self.run_timeout   = 60

    self.parallel_compile = True

    self.grid_slots = 1

    old_data_found = False
    for name in os.listdir(self.output_root):
      dir = os.path.join(self.output_root, name)
      if os.path.isdir(dir) and re.match('Build_', os.path.basename(dir)):
        old_data_found = True

    if old_data_found and not args.append:
      raise RuntimeError("Old results were found.  Explicitly confirm" \
                         " appending the results using the --append command" \
                         " line arguments.")

  def manipulator(self):

    manipulator = ConfigurationManipulator()
    manipulator.add_parameter(LogIntegerParameter("UNROLL_FACTOR_OUTER_HOR", 1, 128))
    manipulator.add_parameter(LogIntegerParameter("UNROLL_FACTOR_INNER_HOR", 1, 143))
    manipulator.add_parameter(LogIntegerParameter("UNROLL_FACTOR_OUTER_VER", 1, 143))
    manipulator.add_parameter(LogIntegerParameter("UNROLL_FACTOR_INNER_VER", 1, 128))
    manipulator.add_parameter(EnumParameter("UNROLL_SKIP_CHECK_OUTER_HOR", ['', 'skip_exit_check']))
    manipulator.add_parameter(EnumParameter("UNROLL_SKIP_CHECK_INNER_HOR", ['', 'skip_exit_check']))
    manipulator.add_parameter(EnumParameter("UNROLL_SKIP_CHECK_OUTER_VER", ['', 'skip_exit_check']))
    manipulator.add_parameter(EnumParameter("UNROLL_SKIP_CHECK_INNER_VER", ['', 'skip_exit_check']))
    manipulator.add_parameter(LogIntegerParameter("INIT_INTERVAL_HOR", 1, 16))
    manipulator.add_parameter(LogIntegerParameter("INIT_INTERVAL_VER", 1, 16))
    return manipulator

  def compile_and_run(self, desired_result, input, limit):

    cfg = desired_result.configuration.data
    compile_result = self.compile(cfg, 0)
    return self.run_precompiled(desired_result, input, limit, compile_result, 0)

  def compile(self, config_data, result_id):

    log.info("Building configuration %d...", result_id)

    output_path = os.path.join(self.output_root, "Build_{0:04d}".format(result_id))
    os.mkdir(output_path)

    symbols = ''
    for param, value in config_data.items():
      symbols += ' -D{0}={1}'.format(param, value)

    build_script = os.path.join(output_path, 'build.sh')
    with open(build_script, 'w') as file:
      file.write('#!/bin/bash -e\n' \
                 'echo "Host: $(hostname)" > System.txt\n' \
                 'Exit_handler()\n' \
                 '{\n' \
                 '  EXIT_VALUE=$?\n' \
                 '  (\n' \
                 '    echo "Output of free:"\n' \
                 '    free -h\n' \
                 '    echo "Output of top:"\n' \
                 '    top -icbn 1\n' \
                 '    echo "Output of dmesg:"\n' \
                 '    dmesg -T\n' \
                 '  ) >> System.txt\n' \
                 '  exit ${EXIT_VALUE}\n' \
                 '}\n' \
                 'trap Exit_handler exit\n' \
                 'source "$SDSOC_ROOT/settings64.sh"\n' \
                 'export HLS_TUNER_ROOT=' + self.hls_tuner_root + '\n' \
                 'timeout ' + str(self.build_timeout) + 's' \
                 ' make -f ' + self.make_file + ' clean all' \
                 ' THREADS=' + str(self.grid_slots) + \
                 ' HLS_TUNER_PARAMETERS=\'' + symbols + '\'\n')

    build_result = self.run_on_grid(result_id, output_path, build_script,
                                    '-q \'70s*\' -now y')

    if self.grid_unavailable(build_result):
      log.info('No 70s are available.  Configuration %d will fall back to' \
               ' icsafe machines.', result_id)
      build_result = self.run_on_grid(result_id, output_path, build_script,
                                      '-q \'70s*,icsafe*\' -now y')

    if self.grid_unavailable(build_result):
      log.info('No 70s or icsafe machines are available.  Configuration %d' \
               ' will fall back to 60s.', result_id)
      build_result = self.run_on_grid(result_id, output_path, build_script,
                                      '')

    if build_result['returncode'] != 0:
      if build_result['returncode'] == 124:
        log.error("Build timeout on configuration %d", result_id)
        return 'timeout'
      else:
        log.error("Build error on configuration %d", result_id)
        return 'error'

    Log_file = os.path.join(output_path, 'Build_output.log')
    timing_met = False
    with open(Log_file, 'r') as file:
      for line in file:
        if line == 'All user specified timing constraints are met.\n':
          timing_met = True

    if not timing_met:
      log.error('Timing not met on configuration %d', result_id)
      return 'error'

    log.info("Build of configuration %d was successful...", result_id)

    return 'ok'

  def run_precompiled(self, desired_result, input, limit, compile_result,
                      result_id):

    if compile_result == 'timeout':
      return Result(state = 'TIMEOUT', time = float('inf'))
    elif compile_result == 'error':
      return Result(state = 'ERROR', time = float('inf'))

    log.info("Running configuration %d...", result_id)

    output_path = os.path.join(self.output_root, "Build_{0:04d}".format(result_id))

    with open(self.make_file, 'r') as file:
      data = file.read()
    target_file = re.search('^main-build: (\S+)', data, re.MULTILINE).group(1)

    run_script = os.path.join(output_path, 'Run.tcl')
    with open(run_script, 'w') as file:
      file.write('connect\n' \
                 'source ' + output_path + '/_sds/p0/ipi/zed.sdk/ps7_init.tcl\n' \
                 'targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0\n' \
                 'rst -system\n' \
                 'after 3000\n' \
                 'targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248518531" && level==0} -index 1\n' \
                 'fpga -file ' + target_file + '.bit\n' \
                 'targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0\n' \
                 'loadhw ' + output_path + '/_sds/p0/ipi/zed.sdk/zed.hdf\n' \
                 'targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0\n' \
                 'ps7_init\n' \
                 'ps7_post_config\n' \
                 'targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0\n' \
                 'dow ' + target_file + '\n' \
                 'bpadd -addr &exit\n' \
                 'con -block\n')

    run_cmd = '/bin/bash -c \'source ' + os.path.join(self.sdsoc_root, 'settings64.sh') + \
              ' && cd ' + output_path + \
              ' && sdx -batch -source ' + run_script + '\''

    serial_port = serial.Serial('/dev/ttyACM0', baudrate = 115200, timeout = 1)
    thread = self.CollectOutputThread(serial_port, output_path)
    thread.start()

    try:
      run_result = self.call_program(run_cmd, shell = True, limit = self.run_timeout)
    except OSError:
      return Result(state='ERROR', time=float('inf'))

    thread.join()

    with open(os.path.join(output_path, 'Run_output.log'), 'w') as file:
      file.write(run_result['stdout'])
    with open(os.path.join(output_path, 'Run_error.log'), 'w') as file:
      file.write(run_result['stderr'])

    if run_result['returncode'] != 0:
      if run_result['timeout']:
        log.error('Run timeout on configuration %d', result_id)
        return Result(state='TIMEOUT', time=float('inf'))
      else:
        log.error('Run error on configuration %d', result_id)
        return Result(state='ERROR', time=float('inf'))

    log.info("Run of configuration %d was successful...", result_id)

    return Result(time=run_result['time'])

  def run_on_grid(self, result_id, output_path, build_script, qsub_params):

    build_cmd_template = 'ssh giesen@iclogin "qsub -S /bin/bash' \
                         ' -wd ' + output_path + \
                         ' -o ' + os.path.join(output_path, 'Build_output.log') + \
                         ' -e ' + os.path.join(output_path, 'Build_error.log') + \
                         ' -N Build_' + str(result_id) + \
                         ' {}' \
                         ' -sync y' \
                         ' -l mem=16g' \
                         ' ' + build_script + '"'

    build_cmd = build_cmd_template.format(qsub_params)
    build_result = self.call_program(build_cmd)
   
    return build_result

  def grid_unavailable(self, build_result):
    output = build_result['stderr']
    return re.search("Your qsub request could not be scheduled", output) != None

  def save_final_config(self, configuration):
    log.info("Optimal number of partitions: %d", configuration.data)
    self.manipulator().save_to_file(configuration.data, 'FilterPipeline_final_config.json')

  class CollectOutputThread(threading.Thread):

    def __init__(self, serial_port, output_path):
      super(FilterPipelineTuner.CollectOutputThread, self).__init__()
      self.serial_port = serial_port
      self.output_path = output_path
      self.stop_event = threading.Event()

    def run(self):
      with open(os.path.join(self.output_path, 'Serial_output.log'), 'w') as file:
        while not self.stop_event.isSet():
          data = self.serial_port.read()
          file.write(data)

    def join(self, timeout = None):
      self.stop_event.set()
      super(FilterPipelineTuner.CollectOutputThread, self).join(timeout)

if __name__ == '__main__':
  opentuner.init_logging()
  args = argparser.parse_args()
  FilterPipelineTuner.main(args)

