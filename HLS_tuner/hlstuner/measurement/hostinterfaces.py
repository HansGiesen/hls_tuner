# Interfaces for running programs on various kinds of hosts
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Name of qsub output and error logs
QSUB_OUTPUT_LOG = "QSub_output.log"
QSUB_ERROR_LOG  = "QSub_error.log"

#######################################################################################################################

# Import classes that are used.
import abc
import re

#######################################################################################################################

class HostInterface(object):
  """
  Abstract interface for running a program on various hosts
  """
  __metaclass__ = abc.ABCMeta

  def set_interface(self, interface):
    """
    Set the measurement interface.
    """
    self.interface = interface

  @abc.abstractmethod
  def run(self, program, run_dir, run_output_log, run_error_log, name, max_threads, max_mem):
    """
    Run a program via the interface.
    """
    pass

#######################################################################################################################

class LocalHostInterface(HostInterface):
  """
  Interface to run program on local host
  """

  def run(self, program, run_dir, run_output_log, run_error_log, name, max_threads, max_mem):
    """
    Run a program on the local host.
    """

    # Run the program locally.
    result = self.interface.call_program(program)

    # Store the contents of standard output and error in log files.
    with open(run_output_log, 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_error_log, 'w') as log_file:
      log_file.write(result['stderr'])

    # Return the result.
    return result

#######################################################################################################################

class SSHHostInterface(HostInterface):
  """
  Interface to run program via SSH on remote host
  """

  def __init__(self, host):
    """
    Creates an object to run programs via a grid engine.
    """
    # Remember the host to use.
    self.host = host


  def run(self, program, run_dir, run_output_log, run_error_log, name, max_threads, max_mem):
    """
    Run a program via SSH on a remote host.
    """

    # Run the program via SSH.
    result = self.interface.call_program('ssh ' + self.host + ' ' + program)

    # Store the contents of standard output and error in log files.
    with open(run_output_log, 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_error_log, 'w') as log_file:
      log_file.write(result['stderr'])

    # Return the result.
    return result

#######################################################################################################################

class GridHostInterface(HostInterface):
  """
  Interface to run program via grid engine on remote host
  """

  def __init__(self, queues):
    """
    Creates an object to run programs via a grid engine.
    """
    # Remember the grid engine queues to use.
    self.queues = queues


  def run(self, program, run_dir, run_output_log, run_error_log, name, max_threads, max_mem):
    """
    Run a program on the grid.  The queues are tried in the listed order.  If no hosts are available to run the job
    immediately, we try the next listed queue, etc.  If the last queue is not available either, we wait until it
    becomes available.
    """

    # Determine the locations of log files.
    qsub_output_log = run_dir + '/' + QSUB_OUTPUT_LOG
    qsub_error_log = run_dir + '/' + QSUB_ERROR_LOG

    # Try each of the specified queues in the specified order.
    for queue in range(len(self.queues)):

      # Add the queue to the qsub parameters.
      qsub_params = '-q \'' + self.queues[queue] + '\''

      # We want qsub to exit immediately if no host is available, unless we have reached the last queue in the list.
      if queue < len(self.queues) - 1:
        qsub_params += ' -now y'

      # Submit the job to the grid.  This process will block until the job has completed (if a host is available).
      result = self.interface.call_program('qsub -S /bin/bash' \
                                           ' -wd ' + run_dir + \
                                           ' -o ' + run_output_log + \
                                           ' -e ' + run_error_log + \
                                           ' -N ' + name + \
                                           ' ' + qsub_params + \
                                           ' -sync y' \
                                           ' -notify' \
                                           ' -pe onenode ' + str(max_threads) + \
                                           ' -l mem=' + str(float(max_mem) / max_threads) + 'g' \
                                           ' ' + program)

      # Try the next host if no host was available.
      if re.search("Your qsub request could not be scheduled", result['stderr']) == None:
        break

    # Store the output of standard output and standard error in log files.
    with open(qsub_output_log, 'w') as log_file:
      log_file.write(result['stdout'])
    with open(qsub_error_log, 'w') as log_file:
      log_file.write(result['stderr'])

    # Return the result of the run.
    return result

