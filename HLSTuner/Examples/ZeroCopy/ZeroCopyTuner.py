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

from opentuner import ConfigurationManipulator
from opentuner import IntegerParameter
from opentuner import MeasurementInterface
from opentuner import Result

log = logging.getLogger('ZeroCopyTuner')

argparser = argparse.ArgumentParser(parents=opentuner.argparsers())
argparser.add_argument('--append', action = 'store_true',
                       help = 'append new tuning run to existing runs')

class ZeroCopyTuner(MeasurementInterface):

  def __init__(self, *pargs, **kwargs):

    super(ZeroCopyTuner, self).__init__(*pargs, **kwargs)

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

    self.hls_tuner_root = os.environ["HLS_TUNER_ROOT"]
    if self.hls_tuner_root == "":
      raise RuntimeError("Environment variable HLS_TUNER_ROOT was not set.")

    self.make_file   = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "ZeroCopy", "makefile")
    self.output_root = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "ZeroCopy")

    self.compile_timeout = 30 * 60
    self.run_timeout     = 10

    self.parallel_compile = True

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
    manipulator.add_parameter(IntegerParameter("PARTITIONS", 1, 16))
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
                 'echo "Running on $(hostname)"\n' \
                 'source $SDSOC_ROOT/settings64.sh\n' \
                 'export HLS_TUNER_ROOT=' + self.hls_tuner_root + '\n' \
                 'make -f ' + self.make_file + ' clean all HLS_TUNER_PARAMETERS=\'' + symbols + '\'\n')

    build_cmd_template = 'ssh giesen@iclogin "qsub -S /bin/bash' \
                         ' -wd ' + output_path + \
                         ' -o ' + os.path.join(output_path, 'Build_output.log') + \
                         ' -e ' + os.path.join(output_path, 'Build_error.log') + \
                         ' {}' \
                         ' -sync y' \
                         ' ' + build_script + '"'

    build_cmd = build_cmd_template.format('-q \'70s*\' -now y')
    compile_result = self.call_program(build_cmd, limit = self.compile_timeout)

    if compile_result['returncode'] != 0 and compile_result['timeout'] < 60:
      log.info('No 70s are available.  Falling back to icsafe machines.')
      build_cmd = build_cmd_template.format('-q \'70s*,icsafe*\'', '-now y')
      compile_result = self.call_program(build_cmd, limit = self.compile_timeout)

    if compile_result['returncode'] != 0 and compile_result['timeout'] < 60:
      log.info('No 70s or icsafe machines are available.  Falling back to 60s.')
      build_cmd = build_cmd_template.format('')
      compile_result = self.call_program(build_cmd, limit = self.compile_timeout)

    if compile_result['returncode'] != 0:
      if compile_result['timeout']:
        log.error("Build timeout on configuration " + str(result_id))
        return 'timeout'
      else:
        log.error("Build error on configuration " + str(result_id))
        return 'error'

    Log_file = os.path.join(output_path, 'Build_output.log')
    timing_met = False
    with open(Log_file, 'r') as file:
      for line in file:
        if line == 'All user specified timing constraints are met.\n'
          timing_met = True

    if not timing_met:
      log.error('Timing not met on configuration ' + str(result_id))
      return 'error'

    log.info("Build of configuration %d was successful...", result_id)

    return 'ok'

  def run_precompiled(self, desired_result, input, limit, compile_result,
                      result_id):

    log.info("Running configuration %d...", result_id)

    if compile_result == 'timeout':
      return Result(state = 'TIMEOUT', time = float('inf'))
    elif compile_result == 'error':
      return Result(state = 'ERROR', time = float('inf'))

    output_path = os.path.join(self.output_root, "Build_{0:04d}".format(result_id))

    with open(self.make_file, 'r') as file:
      data = file.read()
    target_file = re.search('^main-build: (\S+)', data, re.MULTILINE).group(1)

    run_script = os.path.join(output_path, 'run.sh')
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

    run_cmd = 'source ' + os.path.join(self.sdsoc_root, 'settings64.sh') + \
              ' && cd ' + output_path + \
              ' && sdx -batch -source ' + run_script

    try:
      run_result = self.call_program(run_cmd, limit = self.run_timeout)
    except OSError:
      return Result(state='ERROR', time=float('inf'))

    with open(os.path.join(output_path, 'Run_output.log'), 'w') as file:
      file.write(run_result.stdout)
    with open(os.path.join(output_path, 'Run_error.log'), 'w') as file:
      file.write(run_result.stderr)

    if run_result['returncode'] != 0:
      if run_result['timeout']:
        log.error('Run timeout on configuration ' + str(result_id))
        return Result(state='TIMEOUT', time=float('inf'))
      else:
        log.error('Run error on configuration ' + str(result_id))
        return Result(state='ERROR', time=float('inf'))

    log.info("Run of configuration %d was successful...", result_id)

    return Result(time=run_result['time'])

  def save_final_config(self, configuration):
    print "Optimal number of partitions:", configuration.data
    self.manipulator().save_to_file(configuration.data, 'ZeroCopy_final_config.json')

if __name__ == '__main__':
  opentuner.init_logging()
  args = argparser.parse_args()
  ZeroCopyTuner.main(args)

