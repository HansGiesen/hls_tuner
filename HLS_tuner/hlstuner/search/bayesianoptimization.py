"""
Classes for Bayesian optimization

Created on Jul 9, 2019
@author: Hans Giesen (giesen@seas.upenn.edu)

Copyright 2019 Xilinx, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
"""

#######################################################################################################################

from opentuner.search.technique import register
from opentuner.search.bandittechniques import AUCBanditMetaTechnique
from opentuner.search.differentialevolution import DifferentialEvolutionAlt
from opentuner.search.evolutionarytechniques import NormalGreedyMutation, UniformGreedyMutation
from opentuner.search.objective import SearchObjective
from opentuner.search.simplextechniques import RandomNelderMead
from .gaussianprocess import GaussianProcess
from .modeltuner import ModelTuner
from .learningtechniques import LearningTechnique
import math
import numpy
from scipy.stats import norm

#######################################################################################################################

class BayesianOptimization(LearningTechnique):
  """Search technique that selects the optimizal configuration using Bayesian optimization of the provided models"""

  def select_configuration(self):
    """Suggest a new configuration to evaluate.
    
    Returns
    -------
    Configuration
      Suggested configuration
    """
    for result in self._data_set:
      if result.state == 'OK':
        break
    else:
      return self.driver.get_configuration(self.manipulator.random())

    technique = AUCBanditMetaTechnique([
        DifferentialEvolutionAlt(),
        UniformGreedyMutation(),
        NormalGreedyMutation(mutation_rate = 0.3),
        RandomNelderMead(),
      ], log_freq = 0)

    objective = MaximizeExpecImpr(self.objective, self.driver.best_result)
    tuner = ModelTuner(self._models, technique, objective, self.manipulator, self._data_set)
    cfg = tuner.tune()
    return self.driver.get_configuration(cfg) if cfg is not None else None

#######################################################################################################################

class MaximizeExpecImpr(SearchObjective):
  """This class is used to maximize the expected improvement of a model."""

  def __init__(self, objective, best_result):
    """Constructor
    
    Parameters
    ----------
    objective : SearchObjective
      Objective
    best_result
      Best result found so far
    """
    self.objective = objective
    self.best_result = best_result


  def result_order_by_terms(self):
    """Return database columns required to order the results by the objective.
    """
    raise RuntimeError("Columns cannot be ordered by expected improvement because it is a derived metric.")


  def result_compare(self, result1, result2):
    """Compare `result1` and `result2`.
    
    Parameters
    ----------
    result1 : Result
      Measurement 1
    result2 : Result
      Measurement 2
    
    Returns
    -------
    integer
      Negative if `result1` < `result2`, 0 if `result1` == `result2`, positive if `result1` > `result2`.
    """
    # result1 and result2 are intentionally reversed because we want to maximize instead of minimize (the default).
    return cmp(self.compute_expec_impr(result2), self.compute_expec_impr(result1))


  def result_relative(self, result1, result2):
    """Returns the ratio of the objective function values of `result1` and `result2`.
    
    Parameters
    ----------
    result1 : Result
      Measurement 1
    result2 : Result
      Measurement 2
    
    Returns
    -------
    float
      Ratio
    """
    value1 = self.objective.get_mean(result1)
    value2 = self.objective.get_mean(result2)
    if value2 == 0:
      return float('inf') * value1
    return value1 / value2


  def compute_expec_impr(self, result):
    """Computes the expected improvement of a result.

    Parameters
    ----------
    result : Result
      Measurement

    Returns
    -------
    float
      Expected improvement
      
    Notes
    -----
    For numerical stability, we compute the logarithm of the expected improvement instead.
    """    
    means = self.objective.get_means(result)
    std_devs = self.objective.get_std_devs(result)
    best = self.objective.get_means(self.best_result)
    constraints = self.objective.get_constraints()
    
    if constraints is not None:
      probs = [self.safe_cdf(constraints[metric], means[metric], std_devs[metric]) for metric in range(1, len(means))]
      prob = numpy.prod(probs)
    else:
      prob = 1.0
    
    diff = best[0] - means[0]
    if std_devs[0] != 0.0:
      expec_impr = prob * (diff * norm.cdf(best[0], means[0], std_devs[0]) + \
                           std_devs[0] * norm.pdf(best[0], means[0], std_devs[0]))
    else:
      expec_impr = prob * diff if best[0] > means[0] else 0.0
      
    if math.isinf(expec_impr) or math.isnan(expec_impr):
      raise RuntimeError("Invalid expected improvement.")

    if False:
      # CDFs and PDFs can easily become so small that floating-point representations do not have enough precision.  The
      # logcdf and logpdf functions can handle a much larger domain, so we compute the logarithm of the expected
      # improvement instead.
      log_probs = [norm.logcdf(constraints[metric], means[metric], std_devs[metric]) for metric in range(1, len(means))]
      log_prob = numpy.sum(log_probs)
  
      log_diff = math.log(best[0] - means[0])
      exploit_term = log_prob + log_diff + norm.logcdf(best[0], means[0], std_devs[0])
      explore_term = log_prob + math.log(std_devs[0]) + norm.logpdf(best[0], means[0], std_devs[0])
      expec_impr = self.add_log(exploit_term, explore_term)
    
    # Due to rounding errors, the expected improvement is occasionally negative.  I suspect that this doesn't matter.
    return expec_impr


  def add_log(self, x, y):
    """Add two numbers that are in the log domain and avoid overflows.
    
    Parameters
    ----------
    x : float
      Addition operand 1
    y : float
      Addition operand 2
    
    Returns
    -------
    float
      Sum of operands
    """
    min_val = min(x, y)
    max_val = max(x, y)
    try:
      return min_val + math.log(math.exp(max_val - min_val) + 1.0)
    except OverflowError:
      return max_val
    
    
  def safe_cdf(self, value, mean, std_dev):
    """Return the probability density of a normal distribution for a given value.
    
    Parameters
    ----------
    value : float
      Value for which the probability density must be determined.
    mean : float
      Mean of distribution
    std_dev : float
      Standard deviation of distribution
    
    Returns
    -------
    float
      Probability density
    """
    if std_dev != 0.0:
      return norm.cdf(value, mean, std_dev)
    elif value < mean:
      return 0.0
    elif value > mean:
      return 1.0
    else:
      return 0.5

#######################################################################################################################

register(BayesianOptimization([GaussianProcess("run_time"),
                               GaussianProcess("luts"),
                               GaussianProcess("regs"),
                               GaussianProcess("dsps"),
                               GaussianProcess("brams")], name = "BayesianOptimization"))
