# Machine Learning Search Techniques
#
# Base classes for search techniques that use machine-learning models
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

import abc, logging

from opentuner.search.bandittechniques import AUCBanditMetaTechnique
from opentuner.search.differentialevolution import DifferentialEvolutionAlt
from opentuner.search.evolutionarytechniques import NormalGreedyMutation, UniformGreedyMutation
from opentuner.search.simplextechniques import RandomNelderMead
from opentuner.search.technique import SearchTechnique
from .modeltuner import ModelTuner

log = logging.getLogger(__name__)

#######################################################################################################################

class LearningTechnique(SearchTechnique):
  """Abstract base class for machine-learning search techniques"""

  __metaclass__ = abc.ABCMeta

  def __init__(self, models, *pargs, **kwargs):
    """
    Initialize the machine learning search technique object.
    
    Parameters
    ----------
    models : list of Model objects
    """
    super(LearningTechnique, self).__init__(*pargs, **kwargs)

    self._models = models
    self._data_set = []
    self._pending_cfgs = set()


  def handle_requested_result(self, result):
    """This callback is invoked by the search driver to report new results.
    
    Parameters
    ----------
    result : Result
      Result
    """
    self._data_set.append(result)

    data_set = [result for result in self._data_set if result.state == 'OK']
    
    if data_set:
      cfgs = [result.configuration.data for result in data_set]
      for model in self._models:
        results = [getattr(result, model.metric) for result in data_set]
        model.train(cfgs, results)
    
    self._pending_cfgs.discard(result.configuration)


  def desired_configuration(self):
    """Suggest a new configuration to evaluate.
    
    Returns
    -------
    Configuration
      Suggested configuration
    """
    for model in self._models:
      cfg = model.select_configuration()
      if cfg != None:
        break
      
    if cfg == None:
      cfg = self.select_configuration()

    if cfg is not None:
      self._pending_cfgs.add(cfg)
    return cfg


  @abc.abstractmethod
  def select_configuration(self):
    """Callback that should be implemented by a subclass to suggest a new configuration to evaluate.

    Returns
    -------
    Configuration
      Suggested configuration
    """


  def set_driver(self, driver):
    """Set the search driver.
    
    Parameters
    ----------
    driver : SearchDriver
    """
    super(LearningTechnique, self).set_driver(driver)
    for model in self._models:
      model.set_driver(driver)


class Model(object):
  """Abstract base class for machine-learning models"""

  __metaclass__ = abc.ABCMeta
  
  def __init__(self, metric = None):
    """Constructor
    
    Parameters
    ----------
    metric : str
      Metric that is modeled 
    """
    self.metric = metric
    

  def train(self, cfgs, results):
    """Train the model with the provided dataset.
    
    Parameters
    ----------
    cfgs : list of dict
      Configurations
    results : list of float
      Measurements
    """
    pass
    
    
  def set_driver(self, driver):
    """Set the search driver.
    
    Parameters
    ----------
    driver : SearchDriver
    """
    self._driver = driver
    self._manipulator = driver.manipulator


  @abc.abstractmethod
  def predict(self, cfg):
    """Make a prediction for the given configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      Mean of prediction
    float
      Standard deviation of prediction
    """


  def select_configuration(self):
    """Suggest a new configuration to evaluate to initialize the model.
    
    Returns
    -------
    Configuration
      Suggested configuration.  None is returned if initialization has completed.
    """
    return None


class GreedyLearningTechnique(LearningTechnique):
  """Configuration selector that tries the optimal configuration according to the model unless it has already been
  tried, in which case a random configuration is chosen.
  """

  def select_configuration(self):
    """Suggest a new configuration to evaluate.
    
    If the configuration that the model thinks is best has not been tried yet, we will suggest it.  Otherwise, we
    suggest a random configuration.
    
    Returns
    -------
    Configuration
      Suggested configuration
    """
    if len(self._data_set) == 0:
      return self._driver.get_configuration(self._manipulator.random())

    technique = AUCBanditMetaTechnique([
        DifferentialEvolutionAlt(),
        UniformGreedyMutation(),
        NormalGreedyMutation(mutation_rate = 0.3),
        RandomNelderMead(),
      ])

    tuner = ModelTuner(self._models, technique, self._objective, self._manipulator)

    cfg = self._driver.get_configuration(tuner.tune())

    if (cfg in [result.configuration for result in self._data_set]) or (cfg in self._pending_cfgs):
      log.info("Subtechnique suggests already evaluated point.  Falling back to random point.");
      cfg = self._driver.get_configuration(self._manipulator.random())

    return cfg
