"""
Classes for models that combine other models

Created on Jul 18, 2019
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

from .learningtechniques import Model

#######################################################################################################################

class CumulativeModel(Model):
  """Class that combines a first-order prediction model and with a model to predict the remaining error"""

  def __init__(self, simple_model, error_model, *pargs, **kwargs):
    """Constructor
    
    Parameters
    ----------
    simple_model : SimpleModel
      First-order model
    error_model : Model
      Model
    """
    super(CumulativeModel, self).__init__(*pargs, **kwargs)
    
    self._simple_model = simple_model
    self._error_model = error_model


  def set_driver(self, driver):
    """Set the search driver."""
    super(CumulativeModel, self).set_driver(driver)
    self._simple_model.set_driver(driver)
    self._error_model.set_driver(driver)


  def train(self, cfgs, results):
    """Train the model with the provided dataset.
    
    Parameters
    ----------
    cfgs : list of dict
      Configurations
    results : list of float
      Measurements
    """
    self._simple_model.train(cfgs, results)
    
    errors = []
    for cfg, result in zip(cfgs, results):
      pred = self._simple_model.predict(cfg)
      errors.append(result - pred)

    self._error_model.train(cfgs, errors)


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
    pred = self._simple_model.predict(cfg)
    error = self._error_model.predict(cfg)
    return pred + error[0], error[1]
    
    
  def select_configuration(self):
    """Suggest a new configuration to evaluate to initialize the model.
    
    Returns
    -------
    dict or None
      Configuration.  None is returned if initialization has completed.
    """
    cfg = self._simple_model.select_configuration()
    if cfg == None:
      cfg = self._error_model.select_configuration()
    return cfg
