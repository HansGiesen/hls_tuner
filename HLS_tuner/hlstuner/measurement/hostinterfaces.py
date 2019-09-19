"""
Interfaces for running programs on various kinds of hosts

Created on Sep 17, 2019
@author: Hans Giesen (giesen@seas.upenn.edu)
"""

#######################################################################################################################

import abc
import re

#######################################################################################################################

class HostInterface(object):
  """Abstract interface for running a program on various hosts

  Attributes
  ----------
  interf : MeasurementInterface
  """
  __metaclass__ = abc.ABCMeta

  @abc.abstractmethod
  def run(self, program, run_dir, name, max_threads, max_mem):
    """Run a program on another host via the interface.

    Parameters
    ----------
    program : str
      File path to program
    run_dir : str
      Directory in which program must executed
    name : str
      Identifier for this execution
    max_threads : int
      Number of processor cores that program uses
    max_mem : int
      Maximum amount of memory in GB that program uses
    """
    pass

#######################################################################################################################

class LocalHostInterface(HostInterface):
  """Interface to run program on local host
  """

  def run(self, program, run_dir, name, max_threads, max_mem):
    """Run a program on the local host.

    Parameters
    ----------
    program : str
      File path to program
    run_dir : str
      Directory in which program must executed
    name : str
      Identifier for this execution (unused)
    max_threads : int
      Number of processor cores that program uses (unused)
    max_mem : int
      Maximum amount of memory in GB that program uses (unused)
    """
    result = self.interf.call_program(program)
    with open(run_dir + '/stdout.log', 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_dir + '/stderr.log', 'w') as log_file:
      log_file.write(result['stderr'])
    return result

#######################################################################################################################

class SSHHostInterface(HostInterface):
  """Interface to run program via SSH on remote host
  """

  def __init__(self, host):
    """Creates an object to run programs via a grid engine.
    """
    self.host = host


  def run(self, program, run_dir, name, max_threads, max_mem):
    """Run a program via SSH on a remote host.

    Parameters
    ----------
    program : str
      File path to program
    run_dir : str
      Directory in which program must executed
    name : str
      Identifier for this execution
    max_threads : int
      Number of processor cores that program uses
    max_mem : int
      Maximum amount of memory in GB that program uses
    """
    result = self.interf.call_program('ssh ' + self.host + ' ' + program)
    with open(run_dir + '/stdout.log', 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_dir + '/stderr.log', 'w') as log_file:
      log_file.write(result['stderr'])
    return result

#######################################################################################################################

class GridHostInterface(HostInterface):
  """Interface to run program via grid engine on remote host

  Parameters
  ----------
  queues : list of str
    Job queues to which the grid engine should try to submit the job.
  """

  def __init__(self, queues):
    """Creates an object to run programs via a grid engine.
    """
    self.queues = queues


  def run(self, program, run_dir, name, max_threads, max_mem):
    """Run a program on the grid.  The queues are tried in the listed order.  If no hosts are available to run the job
    immediately, we try the next listed queue, etc.  If the last queue is not available either, we wait until it
    becomes available.
    """
    for queue in range(len(self.queues)):
      qsub_params = '-q \'' + self.queues[queue] + '\''
      if queue < len(self.queues) - 1:
        qsub_params += ' -now y'
      result = self.interf.call_program('qsub -S /bin/bash' \
                                           ' -wd ' + run_dir + \
                                           ' -o ' + run_dir + '/stdout.log' + \
                                           ' -e ' + run_dir + '/stderr.log' + \
                                           ' -N ' + name + \
                                           ' ' + qsub_params + \
                                           ' -sync y' \
                                           ' -notify' \
                                           ' -pe onenode ' + str(max_threads) + \
                                           ' -l mem=' + str(float(max_mem) / max_threads) + 'g' \
                                           ' ' + program)
      if re.search("Your qsub request could not be scheduled", result['stderr']) == None:
        break

    with open(run_dir + '/qsub_stdout.log', 'w') as log_file:
      log_file.write(result['stdout'])
    with open(run_dir + '/qsub_stderr.log', 'w') as log_file:
      log_file.write(result['stderr'])

    return result

