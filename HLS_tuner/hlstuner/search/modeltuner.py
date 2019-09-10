# Tuner for Regression Models
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# TODO: Reimplement the ModelTuner class using an SQLite in-memory database

# Number of iterations to spend on searching the optimum
ITERATIONS = 1000

#######################################################################################################################

import copy
import logging

from opentuner.driverbase import DriverBase
from opentuner.resultsdb.models import Configuration, Result

log = logging.getLogger(__name__)

#######################################################################################################################

class QueryResult(object):
  """This class replaces the Query object returned by results_query() in the absence of a database."""

  def __init__(self, result):
    """Constructor
    
    Parameters
    ----------
    result : Result
      Result to be put in the query object.
    """
    self._result = result
    self._done = False

  def __iter__(self):
    """Returns the iterator"""
    return self

  def next(self):
    """Returns the next Result.
    
    Returns
    -------
    Result
      Next result
    """
    if self._done:
      raise StopIteration
    self._done = True
    return self._result

  def count(self):
    """Returns the number of results in the object
    
    Returns
    -------
    Integer
      Number of results
    """
    return 1
  
  def one(self):
    """Returns the first result in the object
    
    Returns
    -------
    Result
      First result
    """
    return self._result


class ModelDriver(DriverBase):
  """Driver with necessary callbacks for ModelTuner class"""

  def __init__(self, objective, manipulator):
    """Create a new driver object."""
    self._results = {}

    self.objective = objective
    self.manipulator = manipulator
    
    self.best_result = None

    # Some techniques need these attributes.
    self.generation = None
    self.tuning_run = None
    

  def add_plugin(self, plugin):
    """Callback to install a plugin into the search driver.
    
    Parameters
    ----------
    plugin
      Unused
    """
    pass


  def has_results(self, cfg):
    """Callback to check whether results for the given configuration are ready.
    
    Parameters
    ----------
    cfg : Configuration
    
    Returns
    -------
    Boolean
      True iff results are ready
    """
    return cfg.hash in self._results


  def get_configuration(self, cfg):
    """Callback for creating Configuration objects
    
    Parameters
    ----------
    cfg : dict
      Configuration
      
    Returns
    -------
    Configuration
      Configuration
      
    Notes
    -----
    It is guaranteed that no other Configuration object with the same configuration values exists inside the model
    tuner, but outside the tuner duplicates may exist.
    """
    self.manipulator.normalize(cfg)
    cfg_hash = self.manipulator.hash_config(cfg)
    if cfg_hash in self._results:
      return self._results[cfg_hash].configuration
    return Configuration(hash = cfg_hash, data=cfg)


  def add_result(self, result):
    """Remember a result such that search techniques can look it up.
    
    Parameters
    ----------
    result : Result
      Result
    """
    self._results[result.configuration.hash] = result


  def results_query(self, config):
    """Look up the result obtained for a given configuration.
    
    Parameters
    ----------
    config : Configuration
      Configuration
      
    Returns
    -------
    Result
      Result
    """
    return QueryResult(self._results[config.hash])


  def register_result_callback(self, desired_result, callback):
    """Register a callback function to handle the result of evaluating a configuration.
    
    Parameters
    ----------
    desired_result : DesiredResult
      Unused
    callback : function taking Result
      Callback function
    """
    self._result_callback = callback


  def invoke_result_callback(self, result):
    """Invoke the callback function to provide the result to the search technique.
    
    Parameters
    ----------
    result : Result
      Result
    """
    self._result_callback(result)
    
    
  def set_best_result(self, result):
    """Set the best result.  Some search techniques rely on this attribute.
    
    Parameters
    ----------
    result : Result
      Result
    """
    self.best_result = result


class ModelTuner(object):
  """This class minimizes machine-learning models using OpenTuner search techniques.

  Parameters
  ----------
  models : list of Model
    Machine-learning models over which the objective function must be minimized
  technique : SearchTechnique
    Search technique(s) that should be used to locate the minimum
  objective : SearchObjective
    Objective function
  manipulator : ConfigurationManipulator
    Configuration manipulator describing design parameters
  data_set : list of Result
    Evaluated configurations.  They are used to avoid suggesting already evaluated configurations.
  """

  def __init__(self, models, technique, objective, manipulator, data_set):
    """Create a new tuner object.    
    """
    # Copy the objective because we need to use our own driver.
    self._objective = copy.copy(objective)

    self._driver = ModelDriver(self._objective, manipulator)

    self._models = models

    self._technique = technique
    self._technique.set_driver(self._driver)

    self._objective.set_driver(self._driver)
    
    self._data_set = data_set


  def tune(self):
    """Optimize the objective function.
    
    Returns
    -------
    dict
      Best configuration found that has not been evaluated yet
    """

    old_results = {result.configuration.hash: result for result in self._data_set} 

    best_result = None
    best_new_result = None
    for _ in range(ITERATIONS):
      desired_result = self._technique.desired_result()
      if desired_result == None:
        break

      cfg = desired_result.configuration
      if self._driver.has_results(cfg):
        continue
      
      result = Result()
      result.configuration = cfg

      old_result = old_results.get(cfg.hash)
      if old_result:
        # Avoid making predictions for evaluated points and getting inaccurate results due to noise.
        for model in self._models:
          setattr(result, model.metric, getattr(old_result, model.metric))
          setattr(result, model.metric + "_std_dev", 0.0)
      else:
        for model in self._models:
          mean, std_dev = model.predict(cfg.data)
          setattr(result, model.metric, mean)
          setattr(result, model.metric + "_std_dev", std_dev)
      
      self._driver.add_result(result)

      self._driver.invoke_result_callback(result)

      # Even though we don't return the best result if we have already evaluated it, we still need it because some
      # search algorithms rely on it.
      if best_result == None or self._objective.lt(result, best_result):
        best_result = result
        self._driver.set_best_result(best_result)

      if not old_result and (best_new_result == None or self._objective.lt(result, best_new_result)):
        best_new_result = result

    # Return the configuration associated with the best result.  We do not return a Configuration object because there
    # may already be another Configuration object with the same parameters in the database.  Returning a new object
    # with the same parameters may mess up code that expects the configuration to be unique.
    return best_new_result.configuration.data if best_new_result is not None else None
