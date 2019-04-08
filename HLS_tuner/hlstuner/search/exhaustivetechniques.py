# Exhaustive search
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

from itertools import product
import logging

import opentuner
from opentuner.search.technique import AsyncProceduralSearchTechnique, register

log = logging.getLogger(__name__)


class ExhaustiveSearchTechnique(AsyncProceduralSearchTechnique):
  """
  Exhaustive search
  """

  def main_generator(self):
    """
    Suggest a new configuration to evaluate.
    """

    cfg = self.manipulator.seed_config()

    # Obtain a list with all parameters.
    params = self.manipulator.parameters(cfg)

    for inst in product(*[param.get_values() for param in params]):

      # Create a configuration.
      cfg = {}
      print([param.name for param in params])
      print(inst)
      for i in range(len(params)):
        cfg[params[i].name] = inst[i]

      # Return the configuration.
      yield self.driver.get_configuration(cfg);


register(ExhaustiveSearchTechnique(name = "ExhaustiveSearch"))

