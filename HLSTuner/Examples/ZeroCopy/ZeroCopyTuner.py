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

from opentuner import ConfigurationManipulator
from opentuner import IntegerParameter
from opentuner import MeasurementInterface
from opentuner import Result

log = logging.getLogger(__name__)

class ZeroCopyTuner(MeasurementInterface):

  def __init__(self, *args):

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      log.error("Environment variable SDSOC_ROOT was not set.")

    self.hls_tuner_root = os.environ["HLS_TUNER_ROOT"]
    if self.hls_tuner_root == "":
      log.error("Environment variable HLS_TUNER_ROOT was not set.")

    self.script_path  = os.path.join(self.hls_tuner_root, "HLSTuner", "Common")
    self.project_path = os.path.join(self.hls_tuner_root, "SDSoC", "ZeroCopy")
    self.make_file    = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "ZeroCopy", "makefile")
    self.output_root  = os.path.join(self.hls_tuner_root, "HLSTuner", "Examples", "ZeroCopy")

    self.build_no = 0

    self.run_timeout = 10

    for name in os.listdir(self.output_root):
      dir = os.path.join(self.output_root, name)
      if os.path.isdir(dir) and re.match('Build_', os.path.basename(dir)):
        shutil.rmtree(dir)

    super(ZeroCopyTuner, self).__init__(*args)

  def manipulator(self):

    manipulator = ConfigurationManipulator()
    manipulator.add_parameter(IntegerParameter("PARTITIONS", 1, 16))
    return manipulator

  def run(self, desired_result, input, limit):

    print("Building...")

    cfg = desired_result.configuration.data

    output_path = os.path.join(self.output_root, "Build_" + str(self.build_no))
    os.mkdir(output_path)
    self.build_no += 1

    symbols = ''
    for param, value in cfg.items():
      symbols += ' -D{0}={1}'.format(param, value)

    build_script = os.path.join(output_path, 'build.sh')
    with open(build_script, 'w') as file:
      file.write('#!/bin/bash -e\n' \
                 'source ' + os.path.join(self.sdsoc_root, 'settings64.sh') + '\n' \
                 'export HLS_TUNER_ROOT=' + self.hls_tuner_root + '\n' \
                 'make -f ' + self.make_file + ' clean all HLS_TUNER_PARAMETERS=\'' + symbols + '\'')

    with open(self.make_file, 'r') as file:
      data = file.read()
    target_file = re.search('^main-build: (\S+)', data, re.MULTILINE).group(1)

    build_cmd = 'ssh giesen@iclogin "qsub -S /bin/bash' \
                ' -wd ' + output_path + \
                ' -o ' + os.path.join(output_path, 'Output.log') + \
                ' -e ' + os.path.join(output_path, 'Error.log') + \
                ' -q \'!icsafe*\'' \
                ' -sync y ' \
                ' ' + build_script + '"'
    print(build_cmd)

    subprocess.check_call(build_cmd, shell = True)
#      job_no = subprocess.check_output(build_cmd, shell = True).split()[2]

#      while subprocess.call('ssh giesen@iclogin "qstat | grep -q ^' + job_no + '"'):
#        time.sleep(60)

    print("Running...")

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
                 'con -block -timeout ' + str(self.run_timeout) + '\n')

    run_cmd = 'source ' + os.path.join(self.sdsoc_root, 'settings64.sh') + \
              ' && cd ' + output_path + \
              ' && sdx -batch -source ' + run_script

    start_time = time.time()
    subprocess.check_call(run_cmd, shell = True)
    end_time = time.time()

    return Result(time = end_time - start_time)

  def save_final_config(self, configuration):
    print "Optimal number of partitions:", configuration.data
    self.manipulator().save_to_file(configuration.data, 'ZeroCopy_final_config.json')

if __name__ == '__main__':
  argparser = opentuner.default_argparser()
  ZeroCopyTuner.main(argparser.parse_args())

