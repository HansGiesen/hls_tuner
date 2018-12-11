# Space Contractor Metatechnique
#
# This metatechnique reduces the design space by exploiting prior knowledge about parameters.  Take for example the
# loop unrolling pragma of Vivado HLS.  If a certain unroll factor results in a design that requires too many resources
# to be implemented, we know that higher values are also not going to be successful because the resource consumption
# increases monotonically with the unroll factor.  Hence, we create a constraint on the design space to ignore all
# values suggested by a subtechnique that are outside the range.  At this moment, we support two kinds of prior
# knowledge, as indicated by the "prior" attribute of primitive parameters:
#
# "inc" - Feasibility of the parameter reduces as the parameter increases.
# "dec" - Feasibility of the parameter reduces as the parameter decreases.
#
# At this moment, configurations that are ignored by the space contractor are not added to the database because I am
# concerned that it may pollute the database more than necessary.  We may also opt to move the functionality of this
# metatechnique into the measurement driver because the search driver would normally not store results in the database.
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

import logging

from .bandittechniques import AUCBanditMetaTechnique
from .differentialevolution import DifferentialEvolutionAlt
from .evolutionarytechniques import NormalGreedyMutation, UniformGreedyMutation
from .simplextechniques import RandomNelderMead
from .metatechniques import MetaSearchTechnique
from .technique import register

log = logging.getLogger(__name__)


class SpaceContractorMetaTechnique(MetaSearchTechnique):
  """
  Metatechnique reducing design space
  """

  def __init__(self, technique, **kwargs):
    """
    Initialize the space contractor meta technique object.
    """

    # Call the constructor of the parent object.
    super(SpaceContractorMetaTechnique, self).__init__([technique], **kwargs)

    # Start with an empty list of constraints.
    self.constraints = []


  def set_driver(self, driver):
    """
    Set the search driver.
    """

    # Use the parent object to perform most of the functionality.
    super(SpaceContractorMetaTechnique, self).set_driver(driver)

    # Remember the manipulator associated with the driver.  We need it because it contains information about the
    # parameters.
    self.manipulator = driver.manipulator


  def desired_result(self):
    """
    Suggest a new configuration to evaluate.
    """

    # Get configurations from the subtechnique until we find one that is feasible.
    while True:

      # Get a desired result from the subtechnique.
      dr = super(SpaceContractorMetaTechnique, self).desired_result()

      # If no desired result is returned, we stop asking for desired results.
      if dr is None or dr is False:
        break

      # Extract the configuration from the desired result.
      cfg = dr.configuration.data

      # Obtain a list with all parameters.
      params = self.manipulator.parameters(cfg)

      # Without constraints, any configuration is feasible.
      infeasible = False

      # Check all constraints.
      for constraint in self.constraints:
        infeasible = True
        for param in params:
          # If the prior is "inc", the feasibility becomes worse as the parameter increases.  Hence, the configuration
          # may be feasible if the parameter becomes smaller.
          if param.is_primitive() and param.prior == "inc" and param.get_value(cfg) < param.get_value(constraint):
            infeasible = False
          # If the prior is "dec", the feasibility becomes worse as the parameter decreases.
          elif param.is_primitive() and param.prior == "dec" and param.get_value(cfg) > param.get_value(constraint):
            infeasible = False
          # For other parameters, we don't know what happens if they are not equal to the constraint.
          elif param.get_value(cfg) != param.get_value(constraint):
            infeasible = False
        # Stop checking constraints if a constraint is infeasible.
        if infeasible:
          break

      # Use the configuration if it is feasible.
      if not infeasible:
        break

      # Inform the user that the configuration is infeasible.
      log.info("Configuration is infeasible.  Looking for a new configuration...")
    
    # Return the configuration.
    return dr


  def select_technique_order(self):
    """
    Select the next technique to use.
    """

    # We have only one technique, so the order is obvious.
    return self.techniques


  def on_technique_result(self, technique, result):
    """
    This callback is invoked by the search driver to report the results of the sub-technique.
    """

    # Check if synthesis ended in state IE3, which means that there were too many BRAMs for the device.  There are
    # probably more applicable errors, but I haven't observed them yet.
    if result.state == "IE3":
      # Keep the user in the loop.
      log.info("Added constraint to space contractor.");
      # Add the configuration of the result to the list.
      constraints.add(result.configuration.data)


# Add the space contractor technique to the list such that we can use it.
register(SpaceContractorMetaTechnique(AUCBanditMetaTechnique([DifferentialEvolutionAlt(),
                                                              UniformGreedyMutation(),
                                                              NormalGreedyMutation(mutation_rate=0.3),
                                                              RandomNelderMead()]), name = "SpaceContractorMetaTechnique"))

