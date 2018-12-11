# Machine Learning Search Techniques
#
# Base classes for search techniques that use machine-learning models
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

import abc
import logging

import opentuner
from opentuner.search.bandittechniques import AUCBanditMetaTechnique
from opentuner.search.differentialevolution import DifferentialEvolutionAlt
from opentuner.search.evolutionarytechniques import NormalGreedyMutation, UniformGreedyMutation
from opentuner.search.simplextechniques import RandomNelderMead
from opentuner.search.technique import SearchTechnique
from .modeltuner import ModelTuner

log = logging.getLogger(__name__)


class LearningTechnique(SearchTechnique):
  """
  Abstract base class for machine-learning search techniques
  """

  __metaclass__ = abc.ABCMeta

  def __init__(self, model, *pargs, **kwargs):
    """
    Initialize the machine learning search technique object.
    """

    # Call the constructor of the parent object.
    super(LearningTechnique, self).__init__(*pargs, **kwargs)

    # Remember configuration selector to use.
    self.model = model

    # Create an empty dataset.
    self.data_set = []

    # Configurations that are still being evaluated
    self.pending_cfgs = set()

    # Provide the dataset to the model and configuration selector.
    model.set_data_set(self.data_set)


  def handle_requested_result(self, result):
    """
    This callback is invoked by the search driver to report new results.
    """

    # Add a new result to the data set.
    self.data_set.append(result)

    # Remove the configuration from the list with pending configurations.
    self.pending_cfgs.discard(result.configuration)


class Model(object):
  """
  Abstract base class for machine-learning models
  """

  __metaclass__ = abc.ABCMeta

  def set_data_set(self, data_set):
    """
    Set data set for model.
    """
    self.data_set = data_set


  @abc.abstractmethod
  def predict(self, cfg):
    """
    Predict the result for the given configuration.
    """


  @abc.abstractmethod
  def estimate_uncertainty(self, cfg):
    """
    Give a measure of uncertainty for the given configuration.
    """


class GreedyLearningTechnique(LearningTechnique):
  """
  Configuration selector that tries the optimal configuration according to the model unless it has already been tried,
  in which case a random configuration is chosen.
  """

  __metaclass__ = abc.ABCMeta

  def desired_configuration(self):
    """
    Suggest a new configuration to evaluate.  If the configuration that the model thinks is best has not been tried
    yet, we will suggest it.  Otherwise, we suggest a random configuration.
    """

    # Suggest a random configuration if we don't have any data points yet.
    if len(self.data_set) == 0:
      return self.manipulator.random()

    # Search technique to use for exploring the model.
    technique = AUCBanditMetaTechnique([
        DifferentialEvolutionAlt(),
        UniformGreedyMutation(),
        NormalGreedyMutation(mutation_rate = 0.3),
        RandomNelderMead(),
      ])

    # Create a version of the tuner that does not use the database.
    tuner = ModelTuner(self.model, technique, self.objective, self.manipulator)

    # Explore the model.
    cfg = tuner.tune()

    # Use a random configuration if we have already evaluated this configuration or are planning to evaluate it.
    if (cfg in [result.configuration for result in self.data_set]) or (cfg in self.pending_cfgs):
      cfg = self.manipulator.random()

    # Add the configuration to the list with pending configurations.
    self.pending_cfgs.add(cfg)

    # Return the configuration.
    return cfg

