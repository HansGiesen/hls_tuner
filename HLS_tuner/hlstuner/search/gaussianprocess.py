"""
Classes for design space models based on Gaussian Processes

Created on Jul 8, 2019
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

import logging
from .learningtechniques import Model
from operator import attrgetter
from sklearn.gaussian_process import GaussianProcessRegressor
from sklearn.gaussian_process.kernels import RBF, ConstantKernel

log = logging.getLogger(__name__)
                                              
#######################################################################################################################

class GaussianProcess(Model):
  """Gaussian Process Model"""

  def train(self, cfgs, results):
    """Train the model with the provided dataset.
    
    Parameters
    ----------
    cfgs : list of dict
      Configurations
    results : list of float
      Measurements
    """
    cfg = self._manipulator.seed_config()
    scale = []
    bounds = []
    for param in sorted(self._manipulator.parameters(cfg), key = attrgetter('name')):
      length = param.max_value - param.min_value
      scale.append(length)
      bounds.append((1.0, length))
      
    dyn_range = (max(results) - min(results)) ** 2
    if dyn_range == 0:
      dyn_range = 1.0
      
    kernel = ConstantKernel(1.0, (1e-10, dyn_range)) * RBF([1.0] * len(bounds), bounds)
    
    # We need some noise (alpha) for numerical stability.  Ideally, we whould monitor warnings and increase alpha if
    # we observe warnings.
    self._process = GaussianProcessRegressor(kernel = kernel, n_restarts_optimizer = 10, alpha = dyn_range / 1e3)

    self._process.fit([self.get_sorted_cfg(cfg) for cfg in cfgs], results)


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
    pred = self._process.predict([self.get_sorted_cfg(cfg)], return_std = True)
    return pred[0][0], pred[1][0]
      
  
  def get_sorted_cfg(self, cfg):
    """Return a list with values from the provided dictionary sorted according to the key."""
    return [value for _, value in sorted(cfg.items())]
