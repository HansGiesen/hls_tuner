#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Location of makefile
MAKEFILE = "TestApps/MachSuite/aes/Sources/Makefile"

# Output directory
OUTPUT_ROOT = "TestApps/MachSuite/aes/Output"

# Template directory
TEMPLATE_DIR = "Templates"
# Data directory
PREBUILT_DIR = "Prebuilt"

# Output directories for each build step
PRESYNTH_OUTPUT_DIR = "Presynth"
SYNTH_OUTPUT_DIR    = "Synth"
IMPL_OUTPUT_DIR     = "Impl"

# Directories in which results of failed build steps are stored.  These get extended with a number to distinguish
# multiple retries.
FAILED_PRESYNTH_DIR = "Presynth_failed"
FAILED_SYNTH_DIR    = "Synth_failed"
FAILED_IMPL_DIR     = "Impl_failed"

# Directories with prebuilt hardware
PREBUILT_PRESYNTH_DIR = PREBUILT_DIR + "/Presynth"
PREBUILT_SYNTH_DIR    = PREBUILT_DIR + "/Synth"
PREBUILT_IMPL_DIR     = PREBUILT_DIR + "/Impl"

# Name of qsub output and error logs
QSUB_OUTPUT_LOG = "QSub_output.log"
QSUB_ERROR_LOG  = "QSub_error.log"

# Templates for the script files performing build steps
PRESYNTH_BASH_TEMPLATE = TEMPLATE_DIR + "/Presynth.bash"
SYNTH_BASH_TEMPLATE    = TEMPLATE_DIR + "/Synth.bash"
SYNTH_TCL_TEMPLATE     = TEMPLATE_DIR + "/Synth.tcl"
IMPL_BASH_TEMPLATE     = TEMPLATE_DIR + "/Impl.bash"
IMPL_TCL_TEMPLATE      = TEMPLATE_DIR + "/Impl.tcl"
RUN_BASH_TEMPLATE      = TEMPLATE_DIR + "/Run.bash"
RUN_TCL_TEMPLATE       = TEMPLATE_DIR + "/Run.tcl"

# Script files generated from templates for build steps
PRESYNTH_BASH_SCRIPT = "Presynth.bash"
SYNTH_BASH_SCRIPT    = "Synth.bash"
IMPL_BASH_SCRIPT     = "Impl.bash"
RUN_BASH_SCRIPT      = "Run.bash"
SYNTH_TCL_SCRIPT     = "Synth.tcl"
IMPL_TCL_SCRIPT      = "Impl.tcl"
RUN_TCL_SCRIPT       = "Run.tcl"

# Template for checking whether host with FPGA is setup correctly
CHECK_FPGA_TEMPLATE    = TEMPLATE_DIR + "/Check_FPGA_host.bash"

# Script generated from template for host check
CHECK_FPGA_SCRIPT    = "Check_FPGA_host.bash"

# Standard output and error logs for build steps
PRESYNTH_OUTPUT_LOG = "Presynth_output.log"
PRESYNTH_ERROR_LOG  = "Presynth_error.log"
SYNTH_OUTPUT_LOG    = "Synth_output.log"
SYNTH_ERROR_LOG     = "Synth_error.log"
IMPL_OUTPUT_LOG     = "Impl_output.log"
IMPL_ERROR_LOG      = "Impl_error.log"
RUN_OUTPUT_LOG      = "Run_output.log"
RUN_ERROR_LOG       = "Run_error.log"

# File with output of serial line 
SERIAL_LOG = "Serial_output.log"

# Names of grid jobs for build steps.  A sequence number is appended as well.
PRESYNTH_JOB = "AES_presynth"
SYNTH_JOB    = "AES_synth"
IMPL_JOB     = "AES_impl"

# Enable these to use prebuilt results for various build steps
USE_PREBUILT_PRESYNTH = False
USE_PREBUILT_SYNTH    = False
USE_PREBUILT_IMPL     = False

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
MAX_JOBS      = 4
# Maximum number of threads that Vivado can use
MAX_THREADS   = 4

# Expected memory usage of a job in GB
PRESYNTH_MAX_MEM_USAGE = 2 # Maximum observed was 1874920 KB.
SYNTH_MAX_MEM_USAGE = 11 # Maximum observed was 10063352 KB.
IMPL_MAX_MEM_USAGE = 1 # Maximum observed was 842348 KB.

# Serial device used for communicating with FPGA
SERIAL_DEVICE   = "/dev/ttyUSB13"
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
import stat
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

# Add the OpenTuner repository to the search path for importing modules.
sys.path.insert(0, tuner_root + '/OpenTuner')

# Import OpenTuner classes that are used.
import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import FloatParameter
from opentuner import IntegerParameter
from opentuner import LogIntegerParameter
from opentuner import MeasurementInterface
from opentuner import Result
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

    # Always perform multiple builds in parallel.
    self.parallel_compile = True

    # Check whether the FPGA is setup.
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


  def compile(self, config_data, result_id):
    """
    Builds hardware and software for one configuration.
    """

    # Create a new output directory for the build.
    output_dir = output_root + "/{0:04d}".format(result_id)
    os.mkdir(output_dir)

    # Determine the names of several subdirectories in the output directory.
    presynth_output_dir = output_dir + '/' + PRESYNTH_OUTPUT_DIR
    synth_output_dir = output_dir + '/' + SYNTH_OUTPUT_DIR

    # Perform the presynthesis step.
    result = self.do_presynth(config_data, result_id, output_dir, presynth_output_dir)

    # Perform the synthesis step if presynthesis was successful.
    if result.state == 'POK':
      result = self.do_synth(result_id, output_dir, presynth_output_dir, synth_output_dir, result)

    # Perform the implementation step if synthesis was successful.
    if result.state == 'SOK':
      result = self.do_impl(result_id, output_dir, synth_output_dir, result)

    # Return the result.
    return result


  def do_presynth(self, config_data, result_id, output_dir, presynth_output_dir):
    """
    Creates software and performs all hardware generation steps before RTL synthesis on one configuration, including
    HLS.
    """

    # Report start of presynthesis.
    log.info("Presynthesize configuration %d...", result_id)

    # Determine the locations of several files.
    bash_template = tuner_root + '/' + PRESYNTH_BASH_TEMPLATE
    bash_script = presynth_output_dir + '/' + PRESYNTH_BASH_SCRIPT
    qsub_output_log = presynth_output_dir + '/' + QSUB_OUTPUT_LOG
    qsub_error_log = presynth_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = presynth_output_dir + '/' + PRESYNTH_OUTPUT_LOG
    build_error_log = presynth_output_dir + '/' + PRESYNTH_ERROR_LOG

    # Try to presynthesize the sources a number of times.
    for retry in range(0, PRESYNTH_RETRIES):

      # Backup the presynthesis results if the last build has failed.
      if retry > 0:
        log.info("Repeating presynthesis of configuration %d...", result_id)
        os.rename(presynth_output_dir, output_dir + '/' + FAILED_PRESYNTH_DIR + '_' + str(retry - 1))

      if not USE_PREBUILT_PRESYNTH:
        # Create a directory for presynthesis results.
        os.mkdir(presynth_output_dir)

        # Create the presynthesis scripts.
        self.create_presynth_scripts(config_data, bash_template, bash_script)

        # Run presynthesis on the IC grid.
        self.run_on_grid(result_id, presynth_output_dir, bash_script, qsub_output_log, qsub_error_log,
                         build_output_log, build_error_log, PRESYNTH_JOB, 1, PRESYNTH_MAX_MEM_USAGE)
      else:
        # Copy the prebuilt results instead of performing presynthesis.
        shutil.copytree(tuner_root + '/' + PREBUILT_PRESYNTH_DIR, presynth_output_dir)

      # Analyze the presynthesis output to determine whether it was successful.
      result = self.get_presynth_result(qsub_error_log, build_output_log)

      # Log the result of this retry.
      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      # Stop presynthesis if we do not expect better results when we try again.
      if not result.state in ['PE0', 'PE1', 'PE2', 'PE?']:
        break

    # Log the result of presynthesis.
    if result.state == 'POK':
      log.info("Presynthesis of configuration %d was successful...", result_id)
    elif result.state == 'PTO':
      log.error("Presynthesis timeout on configuration %d", result_id)
    else:
      log.error("Presynthesis error on configuration %d", result_id)

    # Return the result.
    return result


  def create_presynth_scripts(self, config_data, template_file, script_file):
    """
    Creates scripts for presynthesis build step.
    """

    # Convert the tuner parameters to defines and makefile variables.
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

    # Generate a bash file for the presynthesis.
    self.fill_in_template(template_file, script_file,
                          tuner_root       = tuner_root,
                          make_file        = tuner_root + "/" + MAKEFILE,
                          timeout          = PRESYNTH_TIMEOUT,
                          max_jobs         = MAX_JOBS,
                          max_threads      = MAX_THREADS,
                          defines          = defines,
                          data_mover_clock = data_mover_clock,
                          kernel_clock     = kernel_clock)


  def get_presynth_result(self, qsub_error_log, build_output_log):
    """
    Analyzes the presynthesis output to determine the build result.
    """

    # Read the entire qsub standard error log.
    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return Result(state = 'PE0', msg = 'Cannot find presynthesis qsub error log.')

    # Throw a keyboard exception if the job was terminated by a keyboard interrupt.
    if re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    # Check if the temporary directory could be created.  The generated bash script can throw this error.
    if re.search(r'Cannot create temporary directory.', lines) != None:
      return Result(state = 'PE1', msg = 'Cannot create temporary directory for presynthesis.')

    # Read the entire standard output log of the presynthesis.
    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return Result(state = 'PE2', msg = 'Cannot find presynthesis output log.')

    # Check if presynthesis timed out.  The generated bash script can throw this error.
    if re.search(r'Presynthesis timed out.', lines) != None:
      return Result(state = 'PTO', msg = 'Presynthesis timed out.')
    # Check for known Vivado HLS errors.
    if re.search(r'\[XFORM 203-504\]', lines) != None:
      return Result(state = 'PE3', msg = 'Too much unrolling')
    if re.search(r'\[XFORM 203-1403\]', lines) != None:
      return Result(state = 'PE4', msg = 'Too many load/store instructions')
    # We haven't encountered a known error.  Check whether everything went well.
    if re.search(r'Presynthesis has completed successfully.', lines) == None:
      # We don't know this error.  It may be worth adding to this script.
      return Result(state = 'PE?', msg = 'Unknown presynthesis error')

    # Retrieve the time that presynthesis took.
    match = re.search(r'Runtime: (\S+) s', lines)
    if match != None:
      time = float(match.group(1))
    else:
      return Result(state = 'PE5', msg = 'Cannot find presynthesis time.')

    # Presynthesis was successful.
    return Result(state = 'POK', msg = 'Presynthesis was successful.', presynth_time = time)


  def do_synth(self, result_id, output_dir, presynth_output_dir, synth_output_dir, result):
    """
    Performs RTL synthesis of one configuration.
    """

    # Report start of synthesis.
    log.info("Synthesizing configuration %d...", result_id)

    # Determine the locations of several files.
    bash_template = tuner_root + '/' + SYNTH_BASH_TEMPLATE
    bash_script = synth_output_dir + '/' + SYNTH_BASH_SCRIPT
    tcl_template = tuner_root + '/' + SYNTH_TCL_TEMPLATE
    tcl_script = synth_output_dir + '/' + SYNTH_TCL_SCRIPT
    qsub_output_log = synth_output_dir + '/' + QSUB_OUTPUT_LOG
    qsub_error_log = synth_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = synth_output_dir + '/' + SYNTH_OUTPUT_LOG
    build_error_log = synth_output_dir + '/' + SYNTH_ERROR_LOG

    # Try to synthesize the sources a number of times.
    for retry in range(0, SYNTH_RETRIES):

      # Backup the synthesis results if the last build has failed.
      if retry > 0:
        log.info("Repeating synthesis of configuration %d...", result_id)
        os.rename(synth_output_dir, output_dir + '/' + FAILED_SYNTH_DIR + '_' + str(retry - 1))
    
      if not USE_PREBUILT_SYNTH:
        # Create a directory for synthesis results.
        os.mkdir(synth_output_dir)

        # Create the synthesis scripts.
        self.create_synth_scripts(presynth_output_dir, bash_template, bash_script, tcl_template, tcl_script)

        # Run synthesis on the IC grid.
        self.run_on_grid(result_id, synth_output_dir, bash_script, qsub_output_log, qsub_error_log,
                         build_output_log, build_error_log, SYNTH_JOB, MAX_JOBS, SYNTH_MAX_MEM_USAGE)
      else:
        # Copy the prebuilt results instead of performing synthesis.
        shutil.copytree(tuner_root + '/' + PREBUILT_SYNTH_DIR, synth_output_dir)

      # Analyze the synthesis output to determine whether it was successful.
      result = self.get_synth_result(result, qsub_error_log, build_output_log)

      # Log the result of this retry.
      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      # Stop synthesis if we do not expect better results when we try again.
      if not result.state in ['SE0', 'SE1', 'SE2', 'SE?']:
        break

    # Log the result of synthesis.
    if result.state == 'SOK':
      log.info("Synthesis of configuration %d was successful...", result_id)
    elif result.state == 'STO':
      log.error("Synthesis timeout on configuration %d", result_id)
    else:
      log.error("Synthesis error on configuration %d", result_id)

    # Return the result.
    return result


  def create_synth_scripts(self, presynth_output_dir, bash_template, bash_script, tcl_template, tcl_script):
    """
    Creates scripts for RTL synthesis step.
    """

    # Generate a bash file for the synthesis.
    self.fill_in_template(bash_template, bash_script,
                          tuner_root          = tuner_root,
                          presynth_output_dir = presynth_output_dir,
                          timeout             = SYNTH_TIMEOUT,
                          tcl_script          = tcl_script)

    # Generate a TCL file for the synthesis.
    self.fill_in_template(tcl_template, tcl_script,
                          max_jobs    = MAX_JOBS,
                          max_threads = MAX_THREADS)


  def get_synth_result(self, result, qsub_error_log, build_output_log):
    """
    Analyzes the synthesis output to determine the build result.
    """

    # Read the entire qsub standard error log.
    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return self.update_result(result, state = 'SE0', msg = 'Cannot find synthesis qsub error log.')

    # Throw a keyboard exception if the job was terminated by a keyboard interrupt.
    if re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    # Check if the temporary directory could be created.  The generated bash script can throw this error.
    if re.search(r'Cannot create temporary directory.', lines) != None:
      return self.update_result(result, state = 'SE1', msg = 'Cannot create temporary directory for synthesis.')

    # Read the entire standard output log of the synthesis.
    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return self.update_result(result, state = 'SE2', msg = 'Cannot find synthesis output log.')

    # Check if synthesis timed out.  The generated bash script can throw this error.
    if re.search(r'Synthesis timed out.', lines) != None:
      return self.update_result(result, state = 'STO', msg = 'Synthesis timed out.')
    # We haven't encountered a known error.  Check whether everything went well.
    if re.search(r'Synthesis has completed successfully.', lines) == None:
      # We don't know this error.  It may be worth adding to this script.
      return self.update_result(result, state = 'SE?', msg = 'Unknown synthesis error')

    # Retrieve the time that synthesis took.
    match = re.search(r'Runtime: (\S+) s', lines)
    if match != None:
      time = float(match.group(1))
    else:
      self.update_result(result, state = 'SE3', msg = 'Cannot find synthesis time.')

    # Synthesis was successful.
    return self.update_result(result, state = 'SOK', msg = 'Synthesis was successful.', synth_time = time)


  def do_impl(self, result_id, output_dir, synth_output_dir, result):
    """
    Performs implementation step on one configuration.
    """

    # Report start of implementation.
    log.info("Implementing configuration %d...", result_id)

    # Determine the locations of several files and directories.
    impl_output_dir = output_dir + '/' + IMPL_OUTPUT_DIR
    bash_template = tuner_root + '/' + IMPL_BASH_TEMPLATE
    bash_script = impl_output_dir + '/' + IMPL_BASH_SCRIPT
    tcl_template = tuner_root + '/' + IMPL_TCL_TEMPLATE
    tcl_script = impl_output_dir + '/' + IMPL_TCL_SCRIPT
    qsub_output_log = impl_output_dir + '/' + QSUB_OUTPUT_LOG
    qsub_error_log = impl_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = impl_output_dir + '/' + IMPL_OUTPUT_LOG
    build_error_log = impl_output_dir + '/' + IMPL_ERROR_LOG

    # Try to implement the sources a number of times.
    for retry in range(0, IMPL_RETRIES):

      # Backup the implementation results if the last build has failed.
      if retry > 0:
        log.info("Repeating implementation of configuration %d...", result_id)
        os.rename(impl_output_dir, output_dir + '/' + FAILED_IMPL_DIR + '_' + str(retry - 1))
    
      if not USE_PREBUILT_IMPL:
        # Create a directory for implementation results.
        os.mkdir(impl_output_dir)

        # Create the implementation scripts.
        self.create_impl_scripts(synth_output_dir, bash_template, bash_script, tcl_template, tcl_script)

        # Run implementation on the IC grid.
        self.run_on_grid(result_id, impl_output_dir, bash_script, qsub_output_log, qsub_error_log,
                         build_output_log, build_error_log, IMPL_JOB, MAX_THREADS, IMPL_MAX_MEM_USAGE)
      else:
        # Copy the prebuilt results instead of performing implementation.
        shutil.copytree(tuner_root + '/' + PREBUILT_IMPL_DIR, impl_output_dir)

      # Analyze the implementation output to determine whether it was successful.
      result = self.get_impl_result(result, qsub_error_log, build_output_log)

      # Log the result of this retry.
      log.info("Configuration %d, attempt %d: %s (%s)", result_id, retry,
               result.msg, result.state)

      # Stop implementation if we do not expect better results when we try again.
      if not result.state in ['IE0', 'IE1', 'IE2', 'IE?']:
        break

    # Log the result of implementation.
    if result.state == 'IOK':
      log.info("Implementation of configuration %d was successful...", result_id)
    elif result.state == 'ITO':
      log.error("Implementation timeout on configuration %d", result_id)
    elif result.state == 'TIMING':
      log.error('Timing not met on configuration %d', result_id)
    else:
      log.error("Implementation error on configuration %d", result_id)

    # Return the result.
    return result


  def create_impl_scripts(self, synth_output_dir, bash_template, bash_script, tcl_template, tcl_script):
    """
    Creates scripts for implementation step.
    """

    # Generate a bash file for the implementation.
    self.fill_in_template(bash_template, bash_script,
                          tuner_root       = tuner_root,
                          synth_output_dir = synth_output_dir,
                          timeout          = IMPL_TIMEOUT,
                          tcl_script       = tcl_script)

    # Generate a TCL file for the implementation.
    self.fill_in_template(tcl_template, tcl_script,
                          max_jobs    = MAX_JOBS,
                          max_threads = MAX_THREADS)


  def get_impl_result(self, result, qsub_error_log, build_output_log):
    """
    Analyzes the implementation output to determine the build result.
    """

    # Read the entire qsub standard error log.
    try:
      with open(qsub_error_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return self.update_result(result, state = 'IE0', msg = 'Cannot find implementation qsub error log.')

    # Throw a keyboard exception if the job was terminated by a keyboard interrupt.
    if re.search(r'Interrupted!', lines) != None:
      raise KeyboardException
    # Check if the temporary directory could be created.  The generated bash script can throw this error.
    if re.search(r'Cannot create temporary directory.', lines) != None:
      return self.update_result(result, state = 'IE1', msg = 'Cannot create temporary directory for implementation.')

    # Read the entire standard output log of the implementation.
    try:
      with open(build_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return self.update_result(result, state = 'IE2', msg = 'Cannot find implementation output log.')

    # Check if implementation timed out.  The generated bash script can throw this error.
    if re.search(r'Implementation timed out.', lines) != None:
      return self.update_result(result, state = 'ITO', msg = 'Implementation timed out.')
    # Check for known placer errors.
    if re.search(r'\[Place 30-640\]', lines) != None:
      return self.update_result(result, state = 'IE3', msg = 'Too many BRAMs')
    # Check for known design rule checker errors.
    if re.search(r'\[DRC PDCY-4\]', lines) != None:
      return self.update_result(result, state = 'IE4', msg = 'Unconnected carry input')
    # Check if the timing was met.
    if re.search(r'\[Timing 38-282\]', lines) != None:
      return self.update_result(result, state = 'TIMING', msg = 'Timing constraints not met')
    # We haven't encountered a known error.  Check whether everything went well.
    if re.search(r'Implementation has completed successfully.', lines) == None:
      # We don't know this error.  It may be worth adding to this script.
      return self.update_result(result, state = 'IE?', msg = 'Unknown implementation error')

    # Retrieve the time that implementation took.
    match = re.search(r'Runtime: (\S+) s', lines)
    if match != None:
      time = float(match.group(1))
    else:
      return self.update_result(result, state = 'IE5', msg = 'Cannot find implementation time.')

    # Implementation was successful.
    return self.update_result(result, state = 'IOK', msg = 'Implementation was successful.', impl_time = time)


  def run_precompiled(self, desired_result, inp, limit, compile_result, result_id):
    """
    Tests one configuration on the FPGA.
    """

    # Make sure that the build was successful.
    if compile_result.state != 'IOK':
      return compile_result

    # Log that we are goint to try the implementation on the FPGA.
    log.info("Running configuration %d...", result_id)

    # Determine the location of a number of paths and directories.
    output_dir = output_root + "/{0:04d}".format(result_id)
    impl_output_dir = output_dir + '/' + IMPL_OUTPUT_DIR
    bash_template = tuner_root + '/' + RUN_BASH_TEMPLATE
    bash_script = output_dir + '/' + RUN_BASH_SCRIPT
    tcl_template = tuner_root + '/' + RUN_TCL_TEMPLATE
    tcl_script = output_dir + '/' + RUN_TCL_SCRIPT
    run_output_log = output_dir + '/' + RUN_OUTPUT_LOG
    run_error_log = output_dir + '/' + RUN_ERROR_LOG
    serial_log = output_dir + '/' + SERIAL_LOG

    # Create the implementation scripts.
    self.create_run_scripts(output_dir, impl_output_dir, tcl_template, tcl_script, bash_template, bash_script,
                            serial_log)

    # Run the scripts on the host with the FPGA.
    result = self.run_on_fpga(bash_script, run_output_log, run_error_log)

    # Analyze the run output to determine whether it was successful.
    return self.get_run_result(result_id, result, serial_log, compile_result)


  def create_run_scripts(self, output_dir, impl_output_dir, tcl_template, tcl_script, bash_template, bash_script,
                         serial_log):
    """
    Creates scripts for running implementation on FPGA.
    """

    # Generate a bash file to run the implementation on FPGA.
    self.fill_in_template(bash_template, bash_script,
                          sdsoc_root      = sdsoc_root,
                          output_dir      = output_dir,
                          serial_device   = SERIAL_DEVICE,
                          serial_baudrate = SERIAL_BAUDRATE,
                          tcl_script      = tcl_script,
                          serial_log      = serial_log)

    # Give execute permission to the bash script.
    os.chmod(bash_script, os.stat(bash_script).st_mode | stat.S_IXUSR)

    # Determine the name of the make target (ELF file).
    target_file = self.get_make_target()

    # Generate a TCL file to run the implementation on FPGA.
    self.fill_in_template(tcl_template, tcl_script,
                          impl_output_dir = impl_output_dir,
                          target_file     = target_file)


  def run_on_fpga(self, bash_script, run_output_log, run_error_log):
    """
    Run the provided shell script on the host attached to the FPGA.
    """

    # Run the bash script via SSH on the host.
    try:
      result = self.call_program('ssh ' + FPGA_HOST + ' ' + bash_script, limit = RUN_TIMEOUT)
    except OSError:
      return Result(state='RE?', msg = 'Unknown error while running.')

    # Store the contents of standard output and error in log files.
    with open(run_output_log, 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_error_log, 'w') as log_file:
      log_file.write(result['stderr'])

    # Return the result.
    return result


  def get_run_result(self, result_id, run_result, serial_log, compile_result):
    """
    Analyzes the output of the FPGA to determine whether a run was successful.
    """

    # Check whether the run timed out.
    if run_result['returncode'] != 0 and run_result['timeout']:
      log.error('Run timeout on configuration %d', result_id)
      return self.update_result(compile_result, state = 'RTO', msg = "Run timed out.")

    # Read the entire contents of the serial port log.
    with open(serial_log, 'r') as output_file:
      lines = output_file.read()

    # Check whether the application reported that it completed successfully.
    if run_result['returncode'] != 0 or re.search(r'TEST PASSED', lines) == None:
      log.error('Run error on configuration %d', result_id)
      return self.update_result(compile_result, state = 'RE1', msg = "Test failed.")

    # Retrieve the number of cycles that the run took.
    match = re.search(r'The hardware test took (\S+) cycles.', lines)
    if match != None:
      cycles = int(match.group(1))
    else:
      log.error('Serial port produced invalid output for configuration %d.', result_id)
      return self.update_result(compile_result, state = 'RE2', msg = "Cannot find test duration in serial port log.")

    # The application ran successfully on the FPGA.
    log.info("Run of configuration %d was successful...", result_id)
    return self.update_result(compile_result, state = 'OK', msg = "Run was successful.", run_time = cycles)


  def update_result(self, result, **keywords):
    """
    Adds or changes new information in a Result object.
    """
    for key, value in keywords.items():
      setattr(result, key, value)
    return result

    
  def fill_in_template(self, template_filename, output_filename, **replacements):
    """
    Copies a template file and fills in fields surrounded by curly braces.
    """

    # Read the template from the file.
    with open(template_filename, "r") as template_file:
      template = template_file.read()

    # Make the specified substitutions.
    template = template.format(**replacements)

    # Output the filled-in template to a file.
    with open(output_filename, "w") as output_file:
      output_file.write(template)


  def get_make_target(self):
    """
    Obtain the name of the make target.
    """

    # Read the entire makefile.
    with open(tuner_root + "/" + MAKEFILE, 'r') as file_handle:
      data = file_handle.read()

    # Search for a line that assigns a value to EXE_FILE, which is the main target.
    return re.search(r'^EXE_FILE\s*:=\s*(\S+)', data, re.MULTILINE).group(1)


  def check_fpga_host(self):
    """
    Check whether the FPGA is ready to be used.
    """

    # Determine a couple of filenames that we will use.
    template_file = tuner_root + '/' + CHECK_FPGA_TEMPLATE
    script_file = output_root + '/' + CHECK_FPGA_SCRIPT

    # Generate a bash script for checking whether the host is set up correctly for using the FPGA.
    self.fill_in_template(template_file, script_file,
                          serial_device = SERIAL_DEVICE)

    # Give the bash script execute permission.
    os.chmod(script_file, os.stat(script_file).st_mode | stat.S_IXUSR)

    # Log in on the FPGA host and run the script.
    output = subprocess.check_output(['ssh', FPGA_HOST, script_file])

    # Check the output of the script and throw the appropriate exception.
    if output == 'Not found\n':
      raise RuntimeError("The serial device could not be found.  The FPGA may not be powered on.")
    elif output == 'Not accessible\n':
      raise RuntimeError("The user has no permission to access the serial device.  Perhaps the user must be added to" \
                         " the 'dialout' group.")
    elif output != 'Success\n':
      raise RuntimeError("Check_FPGA_host.bash returned an unknown error.")


  def run_on_grid(self, result_id, output_dir, build_script, qsub_output_log, qsub_error_log, build_output_log,
                  build_error_log, build_step, max_threads, max_mem):
    """
    Run a script on the IC grid.  Initially, jobs are only issued to the 70s because they have the highest
    performance.  If they cannot schedule the jobs immediately, we issue the scripts to icsafe machines too.  If
    they cannot schedule jobs immediately either, the jobs are issued to any available machine.
    """

    # Try to run the job immediately on the 70s.
    result = self.run_on_grid_core(result_id, output_dir, build_script, qsub_output_log, qsub_error_log,
                                   build_output_log, build_error_log, build_step, max_threads, max_mem,
                                   '-q \'70s*\' -now y')

    # Try to run the job immediately on the icsafe machines as well if we could not run it on the 70s.
    if self.grid_unavailable(result):
      log.info('No 70s are available.  Configuration %d will fall back to icsafe machines.', result_id)
      result = self.run_on_grid_core(result_id, output_dir, build_script, qsub_output_log, qsub_error_log,
                                     build_output_log, build_error_log, build_step, max_threads, max_mem,
                                     '-q \'!60s*\' -now y')

    # If we still cannot run the job, try to run it on any grid node and do not demand that it starts immediately
    # anymore.
    if self.grid_unavailable(result):
      log.info('No icsafe machines are available.  Configuration %d will fall back to 60s.', result_id)
      result = self.run_on_grid_core(result_id, output_dir, build_script, qsub_output_log, qsub_error_log,
                                     build_output_log, build_error_log, build_step, max_threads, max_mem, '')

    # Return the result of the run.
    return result

      
  def run_on_grid_core(self, result_id, output_dir, build_script, qsub_output_log, qsub_error_log, build_output_log,
                       build_error_log, build_step, max_threads, max_mem, qsub_params):
    """
    Run a script on the IC grid.  All output is stored in log files.
    """

    # Submit the job to the IC grid.  This process will block until the job has completed.
    result = self.call_program('qsub -S /bin/bash' \
                               ' -wd ' + output_dir + \
                               ' -o ' + build_output_log + \
                               ' -e ' + build_error_log + \
                               ' -N ' + build_step + '_' + str(result_id) + \
                               ' ' + qsub_params + \
                               ' -sync y' \
                               ' -notify' \
                               ' -pe onenode ' + str(max_threads) + \
                               ' -l mem=' + str(float(max_mem) / max_threads) + 'g' \
                               ' ' + build_script)

    # Store the output of standard output and standard error to log files.
    with open(qsub_output_log, 'w') as log_file:
      log_file.write(result['stdout'])
    with open(qsub_error_log, 'w') as log_file:
      log_file.write(result['stderr'])

    # Return the result of the run.
    return result


  def grid_unavailable(self, result):
    """
    Returns True if the output of qsub indicates that a job cannot be executed immediately.
    """
    output = result['stderr']
    return re.search("Your qsub request could not be scheduled", output) != None


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

  # Start the tuner.
  AESTuner.main(args)

