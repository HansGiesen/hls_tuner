#!/usr/bin/env python
#
# Tuner for the AES example of MachSuite
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Location of makefile
MAKEFILE = "TestApps/MachSuite/aes/Sources/Makefile"

# Output directory
OUTPUT_ROOT = "TestApps/MachSuite/aes/Output"

# Script generated from template for host check
CHECK_FPGA_SCRIPT    = "Check_FPGA_host.bash"

# Names of grid job.  The build iteration and step are added later.
JOB_NAME = "AES"

# Enable these to use prebuilt results for various build steps
USE_PREBUILT_PRESYNTH = True
USE_PREBUILT_SYNTH    = True
USE_PREBUILT_IMPL     = True

# Timeout in seconds for each build step  
PRESYNTH_TIMEOUT = 15 * 60
SYNTH_TIMEOUT    = 30 * 60
IMPL_TIMEOUT     = 30 * 60
RUN_TIMEOUT      = 5 * 60

# Number of retries for each build step.  Note that only builds with errors that may disappear are retried.
PRESYNTH_RETRIES = 5
SYNTH_RETRIES    = 5
IMPL_RETRIES     = 5

# Maximum number of modules that are synthesized concurrently
MAX_JOBS    = 4
# Maximum number of threads that Vivado can use
MAX_THREADS = 4

# Expected memory usage of a job in GB
PRESYNTH_MAX_MEM   = 2 # Maximum observed was 1874920 KB.
SYNTH_MAX_MEM      = 11 # Maximum observed was 10063352 KB.
IMPL_MAX_MEM       = 1 # Maximum observed was 842348 KB.
RUN_MAX_MEM        = 1
CHECK_FPGA_MAX_MEM = 1

# IC grid queues for building
#GRID_QUEUES = ["70s*", "!60s", "*"]
GRID_QUEUES = ["!60s", "*"]

# Serial device used for communicating with FPGA
SERIAL_DEVICE   = "/dev/ttyUSB1"
# Baudrate for communicating with FPGA
SERIAL_BAUDRATE = 115200
# Host to which FPGA is attached
FPGA_HOST = "hactar.seas.upenn.edu"

#######################################################################################################################

# Import system modules.
import argparse
import glob
import logging
import math
import os
import re
import serial
import shutil
import subprocess
import sys
import threading

# Locate the root directory of the HLS tuner repository.
tuner_root = sys.path[0]
while True:
  [tuner_root, last_dir] = os.path.split(tuner_root)
  if os.path.isdir(tuner_root + "/.git"):
    break
  if tuner_root == "/":
    raise RuntimeError("Cannot find root of HLS tuner workspace.")

# Add the OpenTuner and HLSTuner repositories to the search path for importing modules.
sys.path.insert(0, tuner_root + '/OpenTuner')
sys.path.insert(0, tuner_root + '/HLS_tuner')

# Import OpenTuner and HLSTuner classes.
from hlstuner.measurement.hostinterfaces import GridHostInterface, SSHHostInterface
from hlstuner.measurement.interface import MeasurementInterface
from hlstuner.search.randomforest import RandomForest
import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import IntegerParameter
from opentuner.search.manipulator import BooleanParameter

#######################################################################################################################

class AESTuner(MeasurementInterface):
  """
  Main tuner class for AES benchmark of MachSuite
  """

  def __init__(self, *pargs, **kwargs):
    """
    Initializes a tuner object and performs a few sanity checks.
    """
    # Call the parent constructor.
    kwargs['project_name'] = "MachSuite"
    kwargs['program_name'] = "aes"
    super(AESTuner, self).__init__(*pargs, **kwargs)


  def configure(self, cfg):
    """
    Hook for providing configuration settings
    """
    # Root directory of the tuner repository
    cfg.tuner_root = tuner_root

    # Output directory
    cfg.output_root = output_root

    # Root directory of SDSoC installation
    cfg.sdsoc_root = sdsoc_root

    # Location of makefile
    cfg.makefile = MAKEFILE

    # Run builds on the IC grid.
    cfg.build_interface = GridHostInterface(GRID_QUEUES)

    # Run measurements on Hactar.
    cfg.meas_interface = SSHHostInterface(FPGA_HOST)

    # Enable these to use prebuilt results for various build steps
    cfg.use_prebuilt_presynth = USE_PREBUILT_PRESYNTH
    cfg.use_prebuilt_synth    = USE_PREBUILT_SYNTH
    cfg.use_prebuilt_impl     = USE_PREBUILT_IMPL

    # Timeout in seconds for each build step  
    cfg.presynth_timeout = PRESYNTH_TIMEOUT
    cfg.synth_timeout    = SYNTH_TIMEOUT
    cfg.impl_timeout     = IMPL_TIMEOUT
    cfg.run_timeout      = RUN_TIMEOUT

    # Number of retries for each build step
    cfg.presynth_retries = PRESYNTH_RETRIES
    cfg.synth_retries    = SYNTH_RETRIES
    cfg.impl_retries     = IMPL_RETRIES

    # Maximum number of modules that are synthesized concurrently
    cfg.max_jobs = MAX_JOBS
    # Maximum number of threads that Vivado can use
    cfg.max_threads = MAX_THREADS

    # Expected memory usage of a job in GB
    cfg.presynth_max_mem   = PRESYNTH_MAX_MEM
    cfg.synth_max_mem      = SYNTH_MAX_MEM
    cfg.impl_max_mem       = IMPL_MAX_MEM
    cfg.run_max_mem        = RUN_MAX_MEM
    cfg.check_fpga_max_mem = CHECK_FPGA_MAX_MEM

    # Serial device settings
    cfg.serial_device   = SERIAL_DEVICE
    cfg.serial_baudrate = SERIAL_BAUDRATE


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
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_SUB", 1, 16, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ADDKEY", 1, 16, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_CPKEY", 1, 16, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_MIX", 1, 4, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_EXP1", 1, 3, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_EXP2", 1, 3, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB1", 1, 32, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB2", 1, 8, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("UNROLL_FACTOR_ECB3", 1, 13, prior = "inc"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_SUB", 1, 16, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ADDKEY", 1, 16, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_CPKEY", 1, 16, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_MIX", 1, 4, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_EXP1", 1, 3, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_EXP2", 1, 3, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB1", 1, 32, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB2", 1, 8, prior = "dec"))
    manipulator.add_parameter(IntegerParameter("PIPELINE_II_ECB3", 1, 13, prior = "dec"))
    manipulator.add_parameter(EnumParameter("KERNEL_CLOCK", ['0', '1', '2', '3']))
    manipulator.add_parameter(EnumParameter("DATA_MOVER_CLOCK", ['0', '1', '2', '3']))
    return manipulator


  def save_final_config(self, configuration):
    """
    Store the final configuration in a JSON file.
    """
    self.manipulator().save_to_file(configuration.data, 'aes_final_config.json')

#######################################################################################################################

if __name__ == '__main__':

  # Start the logging.
  log = logging.getLogger('AESTuner')
  opentuner.init_logging()

  # Make sure that information messages are also logged.
  for handler in logging.getLogger().handlers:
    handler.setLevel(logging.INFO)

  # Parse the command line arguments.
  argparser = argparse.ArgumentParser(parents = opentuner.argparsers())
  argparser.add_argument('--append', action = 'store_true', help = 'append new tuning run to existing runs')
  args = argparser.parse_args()

  # Check if the SDSOC_ROOT environment variable is set.  We need it because when we use SSH to log in to a host, the
  # scripts that set up the environment are not run.
  sdsoc_root = os.environ["SDSOC_ROOT"]
  if sdsoc_root == "":
    raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

  # Determine the absolute location of the output directory.
  output_root = tuner_root + "/" + OUTPUT_ROOT

  # Check if there is still old data in the output directory.
  old_data_found = False
  for name in os.listdir(output_root):
    path = output_root + '/' + name
    if os.path.isdir(path) and re.match('[0-9]{4}$', os.path.basename(path)):
      old_data_found = True

  # Throw an exception if there is still old data.
  if old_data_found and not args.append:
    raise RuntimeError("Old results were found.  Explicitly confirm appending the results using the --append" \
                       " command line arguments.")

  # Select the random forest search technique by default.
  if not args.technique:
    args.technique = ['RandomForest']

  # Start the tuner.
  AESTuner.main(args)

