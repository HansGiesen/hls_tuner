#!/usr/bin/env python
#
# Tuner for the Matrix Multiplication example in SDSoC
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Template directory
TEMPLATE_DIR = "Templates"

# Output directories for each build step
PRESYNTH_OUTPUT_DIR = "Presynth"
SYNTH_OUTPUT_DIR    = "Synth"
IMPL_OUTPUT_DIR     = "Impl"

# Directories in which results of failed build steps are stored.  These get extended with a number to distinguish
# multiple retries.
FAILED_PRESYNTH_DIR = "Presynth_failed"
FAILED_SYNTH_DIR    = "Synth_failed"
FAILED_IMPL_DIR     = "Impl_failed"

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
CHECK_FPGA_TEMPLATE    = TEMPLATE_DIR + "/Check_FPGA.bash"

# Script generated from template for host check
CHECK_FPGA_SCRIPT    = "Check_FPGA.bash"

# Standard output and error logs for build steps
PRESYNTH_OUTPUT_LOG = "Presynth_output.log"
PRESYNTH_ERROR_LOG  = "Presynth_error.log"
SYNTH_OUTPUT_LOG    = "Synth_output.log"
SYNTH_ERROR_LOG     = "Synth_error.log"
IMPL_OUTPUT_LOG     = "Impl_output.log"
IMPL_ERROR_LOG      = "Impl_error.log"

# Standard output and error logs for measurement
RUN_OUTPUT_LOG = "Run_output.log"
RUN_ERROR_LOG  = "Run_error.log"

# Standard output and error logs for FPGA check
CHECK_FPGA_OUTPUT_LOG = "Check_output.log"
CHECK_FPGA_ERROR_LOG  = "Check_error.log"

# File with output of serial line 
SERIAL_LOG = "Serial_output.log"

# Names of grid jobs for build steps.  A sequence number is appended as well.
PRESYNTH_JOB = "presynth"
SYNTH_JOB    = "synth"
IMPL_JOB     = "impl"
RUN_JOB      = "run"

# Name of grid job for checking FPGA
CHECK_FPGA_JOB = "check_fpga"

#######################################################################################################################

# Import modules that are used.
import abc
import argparse
import logging
import opentuner
import os
import re
import shutil
import stat
from opentuner import Result

log = logging.getLogger(__name__)

#######################################################################################################################

class MeasurementInterface(opentuner.MeasurementInterface):
  """
  Abstract base class for measurement interface
  """
  __metaclass__ = abc.ABCMeta

  def __init__(self, *pargs, **kwargs):
    """
    Initializes the measurement interface and performs a few sanity checks.
    """

    # Call the parent constructor.
    super(MeasurementInterface, self).__init__(*pargs, **kwargs)

    # Always perform multiple builds in parallel.  We can set the parallelism to 1 to serialize the builds anyway.
    self.parallel_compile = True

    # Call the configuration hook.
    self.configure(self)

    # Set the measurement interface on each of the host interfaces.
    self.build_interface.set_interface(self)
    self.meas_interface.set_interface(self)

    # Check if the SDSOC_ROOT environment variable is set.  We need it because when we use SSH to log in to a host, the
    # scripts that set up the environment are not run.
    self.sdsoc_root = os.environ["SDSOC_ROOT"]
    if self.sdsoc_root == "":
      raise RuntimeError("Environment variable SDSOC_ROOT was not set.")

    # Make sure there was no old data.
    self.check_output_empty()

    # Check whether the FPGA is setup.
    self.check_fpga()


  @abc.abstractmethod
  def configure(self, cfg):
    """
    Hook for providing configuration settings
    """
    pass


  def compile(self, config_data, result_id):
    """
    Builds hardware and software for one configuration.
    """

    # Create a new output directory for the build.
    output_dir = self.output_root + "/{0:04d}".format(result_id)
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
    Builds software and performs all hardware generation steps before RTL synthesis on one configuration, including
    HLS.
    """

    # Report start of presynthesis.
    log.info("Presynthesize configuration %d...", result_id)

    # Determine the locations of several files.
    bash_template = self.tuner_root + '/' + PRESYNTH_BASH_TEMPLATE
    bash_script = presynth_output_dir + '/' + PRESYNTH_BASH_SCRIPT
    qsub_error_log = presynth_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = presynth_output_dir + '/' + PRESYNTH_OUTPUT_LOG
    build_error_log = presynth_output_dir + '/' + PRESYNTH_ERROR_LOG

    # Try to presynthesize the sources a number of times.
    for retry in range(0, self.presynth_retries):

      # Backup the presynthesis results if the last build has failed.
      if retry > 0:
        log.info("Repeating presynthesis of configuration %d...", result_id)
        os.rename(presynth_output_dir, output_dir + '/' + FAILED_PRESYNTH_DIR + '_' + str(retry - 1))

      if not self.use_prebuilt_presynth:
        # Create a directory for presynthesis results.
        os.mkdir(presynth_output_dir)

        # Create the presynthesis scripts.
        self.create_presynth_scripts(config_data, bash_template, bash_script)

        # Run presynthesis.
        self.build_interface.run(bash_script, presynth_output_dir, build_output_log, build_error_log,
                                 self.job_name + '_' + PRESYNTH_JOB + '_' + str(result_id), 1, self.presynth_max_mem)
      else:
        # Copy the prebuilt results instead of performing presynthesis.
        shutil.copytree(self.prebuilt_presynth_dir, presynth_output_dir)

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
    parameters = self.pack_parameters(config_data)

    # Generate a bash file for the presynthesis.
    self.fill_in_template(template_file, script_file,
                          tuner_root       = self.tuner_root,
                          make_file        = self.tuner_root + "/" + self.makefile,
                          timeout          = self.presynth_timeout,
                          max_jobs         = self.max_jobs,
                          max_threads      = self.max_threads,
                          parameters       = parameters)


  @abc.abstractmethod
  def pack_parameters(self):
    """
    Encapsulate all parameters into a single variable that will be expanded inside the makefile.
    """

    pass


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
    bash_template = self.tuner_root + '/' + SYNTH_BASH_TEMPLATE
    bash_script = synth_output_dir + '/' + SYNTH_BASH_SCRIPT
    tcl_template = self.tuner_root + '/' + SYNTH_TCL_TEMPLATE
    tcl_script = synth_output_dir + '/' + SYNTH_TCL_SCRIPT
    qsub_error_log = synth_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = synth_output_dir + '/' + SYNTH_OUTPUT_LOG
    build_error_log = synth_output_dir + '/' + SYNTH_ERROR_LOG

    # Try to synthesize the sources a number of times.
    for retry in range(0, self.synth_retries):

      # Backup the synthesis results if the last build has failed.
      if retry > 0:
        log.info("Repeating synthesis of configuration %d...", result_id)
        os.rename(synth_output_dir, output_dir + '/' + FAILED_SYNTH_DIR + '_' + str(retry - 1))
    
      if not self.use_prebuilt_synth:
        # Create a directory for synthesis results.
        os.mkdir(synth_output_dir)

        # Create the synthesis scripts.
        self.create_synth_scripts(presynth_output_dir, bash_template, bash_script, tcl_template, tcl_script)

        # Run synthesis.
        self.build_interface.run(bash_script, synth_output_dir, build_output_log, build_error_log,
                                 self.job_name + '_' + SYNTH_JOB + '_' + str(result_id), self.max_jobs,
                                 self.synth_max_mem)
      else:
        # Copy the prebuilt results instead of performing synthesis.
        shutil.copytree(self.prebuilt_synth_dir, synth_output_dir)

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
                          tuner_root          = self.tuner_root,
                          presynth_output_dir = presynth_output_dir,
                          timeout             = self.synth_timeout,
                          tcl_script          = tcl_script)

    # Generate a TCL file for the synthesis.
    self.fill_in_template(tcl_template, tcl_script, max_jobs = self.max_jobs)


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
    bash_template = self.tuner_root + '/' + IMPL_BASH_TEMPLATE
    bash_script = impl_output_dir + '/' + IMPL_BASH_SCRIPT
    tcl_template = self.tuner_root + '/' + IMPL_TCL_TEMPLATE
    tcl_script = impl_output_dir + '/' + IMPL_TCL_SCRIPT
    qsub_error_log = impl_output_dir + '/' + QSUB_ERROR_LOG
    build_output_log = impl_output_dir + '/' + IMPL_OUTPUT_LOG
    build_error_log = impl_output_dir + '/' + IMPL_ERROR_LOG

    # Try to implement the sources a number of times.
    for retry in range(0, self.impl_retries):

      # Backup the implementation results if the last build has failed.
      if retry > 0:
        log.info("Repeating implementation of configuration %d...", result_id)
        os.rename(impl_output_dir, output_dir + '/' + FAILED_IMPL_DIR + '_' + str(retry - 1))
    
      if not self.use_prebuilt_impl:
        # Create a directory for implementation results.
        os.mkdir(impl_output_dir)

        # Create the implementation scripts.
        self.create_impl_scripts(synth_output_dir, bash_template, bash_script, tcl_template, tcl_script)

        # Run implementation.
        self.build_interface.run(bash_script, impl_output_dir, build_output_log, build_error_log,
                                 self.job_name + '_' + IMPL_JOB + '_' + str(result_id), self.max_threads,
                                 self.impl_max_mem)
      else:
        # Copy the prebuilt results instead of performing implementation.
        shutil.copytree(self.prebuilt_impl_dir, impl_output_dir)

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
                          tuner_root       = self.tuner_root,
                          synth_output_dir = synth_output_dir,
                          timeout          = self.impl_timeout,
                          tcl_script       = tcl_script)

    # Generate a TCL file for the implementation.
    self.fill_in_template(tcl_template, tcl_script, max_threads = self.max_threads)


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
    output_dir = self.output_root + "/{0:04d}".format(result_id)
    impl_output_dir = output_dir + '/' + IMPL_OUTPUT_DIR
    bash_template = self.tuner_root + '/' + RUN_BASH_TEMPLATE
    bash_script = output_dir + '/' + RUN_BASH_SCRIPT
    tcl_template = self.tuner_root + '/' + RUN_TCL_TEMPLATE
    tcl_script = output_dir + '/' + RUN_TCL_SCRIPT
    run_output_log = output_dir + '/' + RUN_OUTPUT_LOG
    run_error_log = output_dir + '/' + RUN_ERROR_LOG
    serial_log = output_dir + '/' + SERIAL_LOG

    # Create the implementation scripts.
    self.create_run_scripts(output_dir, impl_output_dir, tcl_template, tcl_script, bash_template, bash_script,
                            serial_log)

    # Run the bash script.
    self.meas_interface.run(bash_script, output_dir, run_output_log, run_error_log,
                            self.job_name + '_' + RUN_JOB + '_' + str(result_id), 1, self.run_max_mem)

    # Analyze the run output to determine whether it was successful.
    return self.get_run_result(result_id, compile_result, run_output_log, serial_log)


  def create_run_scripts(self, output_dir, impl_output_dir, tcl_template, tcl_script, bash_template, bash_script,
                         serial_log):
    """
    Creates scripts for running implementation on FPGA.
    """

    # Generate a bash file to run the implementation on FPGA.
    self.fill_in_template(bash_template, bash_script,
                          sdsoc_root      = self.sdsoc_root,
                          output_dir      = output_dir,
                          serial_device   = self.serial_device,
                          serial_baudrate = self.serial_baudrate,
                          tcl_script      = tcl_script,
                          serial_log      = serial_log,
                          timeout         = self.run_timeout,
                          tuner_root      = self.tuner_root)

    # Give execute permission to the bash script.
    os.chmod(bash_script, os.stat(bash_script).st_mode | stat.S_IXUSR)

    # Determine the name of the make target (ELF file).
    target_file = self.get_make_target()

    # Generate a TCL file to run the implementation on FPGA.
    self.fill_in_template(tcl_template, tcl_script,
                          impl_output_dir = impl_output_dir,
                          target_file     = target_file)


  def get_run_result(self, result_id, result, run_output_log, serial_log):
    """
    Analyzes the output of the FPGA to determine whether a run was successful.
    """

    # Read the entire standard output log of the implementation.
    try:
      with open(run_output_log, 'r') as log_file:
        lines = log_file.read()
    except:
      return self.update_result(result, state = 'RE0', msg = 'Cannot find run output log.')

    # Check if run timed out.  The generated bash script can throw this error.
    if re.search(r'Run timed out.', lines) != None:
      log.error('Run timeout on configuration %d', result_id)
      return self.update_result(result, state = 'RTO', msg = 'Run timed out.')

    # Read the entire contents of the serial port log.
    with open(serial_log, 'r') as output_file:
      lines = output_file.read()

    # Check whether the application reported that it completed successfully.
    if re.search(r'TEST PASSED', lines) == None:
      log.error('Run error on configuration %d', result_id)
      return self.update_result(result, state = 'RE1', msg = "Test failed.")

    # Retrieve the number of cycles that the run took.
    match = re.search(r'The hardware test took (\S+) cycles.', lines)
    if match != None:
      cycles = int(match.group(1))
    else:
      log.error('Serial port produced invalid output for configuration %d.', result_id)
      return self.update_result(result, state = 'RE2', msg = "Cannot find test duration in serial port log.")

    # The application ran successfully on the FPGA.
    log.info("Run of configuration %d was successful...", result_id)
    return self.update_result(result, state = 'OK', msg = "Run was successful.", run_time = cycles)


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
    with open(self.tuner_root + "/" + self.makefile, 'r') as file_handle:
      data = file_handle.read()

    # Search for a line that assigns a value to EXE_FILE, which is the main target.
    return re.search(r'^EXE_FILE\s*:=\s*(\S+)', data, re.MULTILINE).group(1)


  def check_output_empty(self):
    """
    Check if there is old data in the output directory.
    """

    # Check if there is still old data in the output directory.
    old_data_found = False
    for name in os.listdir(self.output_root):
      path = self.output_root + '/' + name
      if os.path.isdir(path) and re.match('[0-9]{4}$', os.path.basename(path)):
        old_data_found = True

    # Throw an exception if there is still old data.
    if old_data_found and not self.args.append:
      raise RuntimeError("Old results were found.  Explicitly confirm appending the results using the --append" \
                         " command line arguments.")


  def check_fpga(self):
    """
    Check whether the FPGA is ready to be used.
    """

    # Determine a couple of filenames that we will use.
    template_file = self.tuner_root + '/' + CHECK_FPGA_TEMPLATE
    script_file = self.output_root + '/' + CHECK_FPGA_SCRIPT
    output_log = self.output_root + '/' + CHECK_FPGA_OUTPUT_LOG
    error_log = self.output_root + '/' + CHECK_FPGA_ERROR_LOG

    # Generate a bash script for checking whether the host is set up correctly for using the FPGA.
    self.fill_in_template(template_file, script_file, serial_device = self.serial_device)

    # Give the bash script execute permission.
    os.chmod(script_file, os.stat(script_file).st_mode | stat.S_IXUSR)

    # Run the script.
    self.meas_interface.run(script_file, self.output_root, output_log, error_log, CHECK_FPGA_JOB, 1,
                            self.check_fpga_max_mem)

    # Read the entire standard output log.
    with open(output_log, 'r') as log_file:
      lines = log_file.read()

    # Check the output of the script and throw the appropriate exception.
    if lines == 'Not found\n':
      raise RuntimeError("The serial device could not be found.  The FPGA may not be powered on.")
    elif lines == 'Not accessible\n':
      raise RuntimeError("The user has no permission to access the serial device.  Perhaps the user must be added to" \
                         " the 'dialout' group.")
    elif lines != 'Success\n':
      raise RuntimeError("Check_FPGA_host.bash returned an unknown error.")


  @classmethod
  def main(self):
    """
    This is the main function of the tuner.
    """

    # Start logging messages.
    opentuner.init_logging()

    # Make sure that information messages are also logged.
    for handler in logging.getLogger().handlers:
      handler.setLevel(logging.INFO)

    # Parse the command line arguments.
    argparser = argparse.ArgumentParser(parents = opentuner.argparsers())
    argparser.add_argument('--append', action = 'store_true', help = 'append new tuning run to existing runs')
    args = argparser.parse_args()

    # Select the random forest search technique by default.
    if not args.technique:
      args.technique = ['RandomForest']

    # Start the tuner.
    super(MeasurementInterface, self).main(args)

