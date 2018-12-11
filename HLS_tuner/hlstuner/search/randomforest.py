# Random Forest Model
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Maximum value for labels in regression model
MAX_LABEL = 1e10

# Amount of time that we would like to spend on training in seconds
TRAINING_TIME = 1.0

# Factor for slowing down updates of number of trees used by random forest
UPDATE_FACTOR = 0.2

import logging
import sys
import time

from .learningtechniques import GreedyLearningTechnique, Model
from opentuner.search.technique import register
from sklearn.ensemble import RandomForestRegressor

log = logging.getLogger(__name__)


class RandomForest(Model):
  """
  Random Forest Model
  """

  def __init__(self):
    """
    Initialize the random forest model object.
    """

    # Assume the data set is empty.
    self.data_size = 0

    # Start with a modestly sized tree.
    self.trees = 100


  def predict(self, cfg):
    """
    Predict the result for the given configuration.
    """

    # Retrain the regressor if the data set has changed.
    if len(self.data_set) != self.data_size:

      # Inform the user that we are going to retrain the model.
      log.info("Retraining the model with %d samples and %d trees.", len(self.data_set), self.trees)

      # Create a new random forest object.
      self.regressor = RandomForestRegressor(n_estimators = self.trees)

      # Obtain data samples.
      X = [result.configuration.data.values() for result in self.data_set]
      # Obtain labels.
      Y = [result.run_time for result in self.data_set]
      # Get rid of infinite values in labels to avoid overflows, which the random forest model does not support.
      Y = [min(y, MAX_LABEL) for y in Y]

      # Obtain the time to measure the time spent on training.
      start = time.time()

      # Retrain the regressor.
      self.regressor.fit(X, Y)

      # Compute the training time.
      training_time = time.time() - start

      # Compute the number of trees that we need to spend the desired amount of time on training.
      trees = self.trees * TRAINING_TIME / training_time

      # Update the number of trees slowly to avoid instabilities due to measurement inaccuracies.
      self.trees = int((1 - UPDATE_FACTOR) * self.trees + UPDATE_FACTOR * trees)

      # Update the size of the data set.
      self.data_size = len(self.data_set)

    # Make a prediction for the configuration.
    return self.regressor.predict([cfg.values()])[0]


  def estimate_uncertainty(self, cfg):
    """
    Give a measure of uncertainty for the given configuration.  Random forests don't give uncertainty measures.
    """
    return 0


# Add the random forest model to the list such that we can use it.
register(GreedyLearningTechnique(RandomForest(), name = "RandomForest"))

