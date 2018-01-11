#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC

import opentuner
from opentuner import ConfigurationManipulator
from opentuner import IntegerParameter
from opentuner import MeasurementInterface
from opentuner import Result
import os
import subprocess
import time
import shutil
import re

class MatMulTuner(MeasurementInterface):

  def __init__(self, *args):

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise HLSTunerError("Environment variable SDSOC_ROOT was not set.");

    self.hls_tuner_root = os.environ["HLS_TUNER_ROOT"]
    if self.hls_tuner_root == "":
      raise HLSTunerError("Environment variable HLS_TUNER_ROOT was not set.");

    self.script_path  = self.hls_tuner_root + "/HLSTuner/Common"
    self.project_path = self.hls_tuner_root + "/SDSoC/MatMul"
    self.output_path  = self.project_path + "/Debug"

    self.serial_device = "/dev/ttyACM0"

    super(MatMulTuner, self).__init__(*args)

  def manipulator(self):

    self.expose_defines()

    manipulator = ConfigurationManipulator()
    params = self.get_parameters()
    for line in params:
      [param, type] = line.split()[3 : 5]
      if type == 'integer':
        start, end = line.split()[5 : 7]
        manipulator.add_parameter(IntegerParameter(param, start, end))
      else:
        raise HLSTunerError("Unknown parameter type encountered in tuner parameter pragma.")
    return manipulator

  def run(self, desired_result, input, limit):

    print("Building...")

    cfg = desired_result.configuration.data

    symbols = ''
    for param, value in cfg.items():
      symbols += ' -D{0}={1}'.format(param, value)

    build_cmd  = 'bash -c "source ' + self.sdsoc_root + '/settings64.sh && '
    build_cmd += 'cd ' + self.output_path + ' && '
    build_cmd += 'make clean && '
    build_cmd += 'make HLS_TUNER_PARAMETERS=\'' + symbols + '\'"'

#    subprocess.check_call(build_cmd, shell = True)

    print("Running...")

    run_cmd  = [self.script_path + '/Run.sh', self.output_path, self.serial_device]

    start_time = time.time()
    subprocess.check_call(run_cmd)
    end_time = time.time()

    return Result(time = end_time - start_time)

  def save_final_config(self, configuration):
    print "Optimal number of partitions:", configuration.data
    self.manipulator().save_to_file(configuration.data, 'MatMul_final_config.json')

  def expose_defines(self):
    for mk_file in self.find_mk_files():
      orig_mk_file = mk_file + '.orig'
      if not os.path.isfile(orig_mk_file):
        shutil.copyfile(mk_file, orig_mk_file)
      with open(orig_mk_file, 'r') as input_file:
        with open(mk_file, 'w') as output_file:
          for line in input_file:
            line = re.sub('\tsds\+\+', '\tsds++ $(HLS_TUNER_PARAMETERS)', line)
            output_file.write(line)

  def get_parameters(self):

    src_files = []
    for mk_file in self.find_mk_files():
      with open(mk_file, 'r') as file:
        data = file.read()
      lines = re.search('CPP_SRCS.*\nOBJS', data, flags = re.DOTALL)
      match = lines.group(0).split()
      for i in range(0, (len(match) - 3) / 2):
        src_files.append(os.path.join(self.output_path, match[3 + 2 * i]))

    params = []
    for src_file in src_files:
      with open(src_file, 'r') as file:
        for line in file:
          if re.search(r'^#pragma\s+tuner\s+parameter\s', line) != None:
            params.append(line)
    return params

  def find_mk_files(self):
    mk_files = []
    for root, dirs, files in os.walk(self.output_path):
      for file in files:
        if file == 'subdir.mk':
          mk_files.append(os.path.join(self.output_path, root, file))
    return mk_files

class HLSTunerError(Exception):

  def __init__(self, message):
    super(HLSTunerError, self).__init__(message)

if __name__ == '__main__':
  argparser = opentuner.default_argparser()
  MatMulTuner.main(argparser.parse_args())

