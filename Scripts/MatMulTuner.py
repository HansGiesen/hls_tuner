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

class MatMulTuner(MeasurementInterface):

  def __init__(self, *args):

    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if (self.sdsoc_root == ""):
      raise I3Error("Environment variable SDSOC_ROOT was not set.");

    self.i3_root = os.environ["I3_ROOT"]
    if (self.i3_root == ""):
      raise I3Error("Environment variable I3_ROOT was not set.");

    self.script_path  = self.i3_root + "/Code/Scripts"
    self.project_path = self.i3_root + "/Code/SDSoC/MatMul"
    self.output_path  = self.project_path + "/Debug"

    super(MatMulTuner, self).__init__(*args)

  def manipulator(self):

    expose_params_cmd = [ self.script_path + '/Expose_defines.sh', self.output_path]
    subprocess.check_call(expose_params_cmd)

    manipulator = ConfigurationManipulator()
    get_params_cmd = [self.script_path + '/Get_parameters.sh', self.output_path]
    params = subprocess.check_output(get_params_cmd)
    for line in params.strip().split('\n'):
      [param, type] = line.split()[3 : 5]
      if (type == 'integer'):
        start, end = line.split()[5 : 7]
        manipulator.add_parameter(IntegerParameter(param, start, end))
      else:
        raise I3Error("Unknown parameter type encountered in i3 parameter pragma.")
    return manipulator

  def run(self, desired_result, input, limit):
    cfg = desired_result.configuration.data

    symbols = ''
    for param, value in cfg.items():
      symbols += ' -D{0}={1}'.format(param, value)

    build_cmd  = 'bash -c "source ' + self.sdsoc_root + '/settings64.sh && '
    build_cmd += 'cd ' + self.output_path + ' && '
    build_cmd += 'make clean && '
    build_cmd += 'make I3_PARAMETERS=\'' + symbols + '\'"'

    build_result = self.call_program(build_cmd)
    assert build_result['returncode'] == 0

    run_cmd = './tmp.bin'

    run_result = self.call_program(run_cmd)
    assert run_result['returncode'] == 0

    return Result(time = run_result['time'])

  def save_final_config(self, configuration):
    print "Optimal number of partitions:", configuration.data
    self.manipulator().save_to_file(configuration.data, 'MatMul_final_config.json')

class I3Error(Exception):

  def __init__(self, message):
    super(I3Error, self).__init__(message)

if __name__ == '__main__':
  argparser = opentuner.default_argparser()
  MatMulTuner.main(argparser.parse_args())

