"""
Classes for first-order design space models

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

# We assume that all memories are True Dual-Port BRAMs.  We are not taking into account that Simple Dual-Ported BRAMs
# are used in some cases. 
BRAM_PORTS = 2

MEM_SIZES = [(16384, 1), (8192, 2), (4096, 4), (2048, 9), (1024, 18), (512, 36)]

MIN_MEM_LENGTH = 32

import abc,  math
from collections import defaultdict
from .learningtechniques import Model
from utils.kernelstructure import KernelStructure
from opentuner.resultsdb.models import Result

#######################################################################################################################

class SimpleModel(Model):
  """Abstract base class for all first-order models
  
  Attributes
  ----------
  _initialized : boolean
    True if the smallest configuration has been provided for evaluation, and False otherwise.
  _smallest_cfg : Configuration
    Configuration that should have the smallest area
  _kernel_structure : KernelStructure
    Description of the kernel
  """

  __metaclass__ = abc.ABCMeta
  
  def __init__(self, *pargs, **kwargs):
    """Constructor"""
    super(SimpleModel, self).__init__(*pargs, **kwargs)
    self._initialized = False
    self._smallest_cfg = None
    self._kernel_structure = None
    
    
  def train(self, cfgs, results):
    """Train the model with the provided dataset.
    
    Parameters
    ----------
    cfgs : list of dict
      Configurations
    results : list of float
      Measurements
    """
    if self._initialized:
      return
    
    if self._get_smallest_cfg() in cfgs:
      self._initialized = True
  

  def select_configuration(self):
    """Suggest a new configuration to evaluate to initialize the model.
    
    Returns
    -------
    dict or None
      Configuration.  None is returned if initialization has completed.
    """
    if self._initialized:
      return None
        
    self._initialized = True

    cfg = self._driver.get_configuration(self._get_smallest_cfg())
    cfg.extract_struct = True

    return cfg


  @abc.abstractmethod
  def predict(self, cfg):
    """Predict the latency of a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      Latency in cycles
    """
  
  
  def load_kernel_structure(self):
    """Load the kernel structure from disk and populate `self._kernel_structure`."""
    if not self._kernel_structure:      
      cfg = self._driver.get_configuration(self._get_smallest_cfg())
      result = self._driver.session.query(Result).filter_by(configuration = cfg).limit(1).one()
      output_dir = "{0}/Output/{1:04d}".format(self._driver.args.output_dir, result.id)
      self._kernel_structure = KernelStructure()
      self._kernel_structure.load(output_dir + '/KernelStruc.yml')
      
      
  def _get_smallest_cfg(self):
    """Return the configuration that should have the smallest area.
    
    Returns
    -------
    dict
      Configuration
    """
    if not self._smallest_cfg:
      cfg = self._manipulator.seed_config()
      params = self._manipulator.parameters(cfg)
      
      for param in params:
        cfg[param.name] = param.min_value
          
      self._smallest_cfg = cfg

    return self._smallest_cfg


  def get_partition_factor(self, cfg, mem):
    """Look up the partition factor of a memory in the configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    mem : str
      Name of memory
      
    Returns
    -------
    int
      Partition factor
    """
    for name, value in cfg.items():
      if not name.endswith('|partition_1'):
        continue
      cfg_alias = name[:-12]
      cfg_mem = self._kernel_structure.mem_aliases[cfg_alias][0]
      if mem == cfg_mem:
        return value
    return 1
    
#######################################################################################################################

class SimpleLatencyModel(SimpleModel):
  """A first-order model for latency"""
  
  def predict(self, cfg):
    """Predict the latency of a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      Latency in cycles
    """
    self.load_kernel_structure()
    function = self._kernel_structure.top_function
    return self._predict(self._kernel_structure.functions[function], cfg, function, "")


  def _predict(self, scope, cfg, function, loop_name):
    """Predict the latency of a loop or function for a given configuration.
    
    Parameters
    ----------
    scope : dict
      Description of loop or function in program
    cfg : dict
      Configuration
    function : str
      Function name
    loop_name : str
      Loop name
    """
    unroll_factor = cfg.get(function + '|' + loop_name + '|unroll', 1)
    iterations = math.ceil((scope["iterations"] if loop_name != "" else 1) / unroll_factor)
    
    if 'pipeline_depth' not in scope:
      iter_latency = scope['latency_const_1']

      for loop in scope["loops"]:
        iter_latency += self._predict(loop, cfg, function, loop['name'])
      
      for callee in scope["calls"]:
        name = callee.replace('.', '_')
        iter_latency += self._predict(self._kernel_structure.functions[name], cfg, name, "")

      # We assume that an iteration can be divided into a portion for accessing memories and an execution portion.  In
      # reality, there will likely be some overlap, but we are not taking that into account here.
  
      # The iteration latency includes cycles for memory access.  These are based on a design without unrolling or
      # partitioning, so we remove the access cycles first.
      accesses = scope.get("accesses", {}) 
      access_cnt = max(accesses.values() + [0])
      access_cycles = math.ceil(access_cnt / float(BRAM_PORTS))
      exec_cycles = iter_latency - access_cycles
      
      # Compute the access cycles based on the partition and unroll factors.  We assume that the memory with most
      # accesses is on the critical path.
      # This implementation is bad.  We take the worst partition factor of all memories that a memory reference could
      # point to, depending on the calling function.  We are actually traversing through the function calls, so we
      # could have figured out the particular memory that is being addressed instead.
      access_cycles = [0]
      for mem, access_cnt in accesses.items():
        partition_factor = self.get_partition_factor(cfg, mem)
        access_cycles.append(math.ceil(unroll_factor * access_cnt / float(BRAM_PORTS * partition_factor)))
        
      iter_latency = exec_cycles + max(access_cycles)        
      latency = iter_latency * iterations + scope['latency_const_2']
    
    else:
      pipeline_ii = scope['pipeline_ii']
      # In the future, we should update the pipeline II according to the available bandwidth.
      latency = (iterations - 1) * pipeline_ii + scope['pipeline_depth'] - 1

    return latency
  
#######################################################################################################################

class SimpleAreaModel(SimpleModel):
  """A common base class for all first-order area models"""
  
  def _count_non_mem_resources(self, cfg, resource_type, resource_idx):
    """Predict the number of resources of the given type needed for everything but memories in a given configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    resource_type : {"func_units", "registers", "multiplexers"}
      Resource type
    resource_idx : {0, 1, 2}
      Resource type: 0 = DSPs, 1 = LUTs, 2 = registers
      This index is only used if `resource_type` is "func_units".
    
    Returns
    -------
    float
      Resource count
    """
    self.load_kernel_structure()
    
    multipliers = {key: defaultdict(lambda: 1) for key in getattr(self._kernel_structure, resource_type)}
    for name, function in self._kernel_structure.functions.items():
      self._update_multipliers(multipliers, function, cfg, name, "", 1.0, resource_type)

    total = 0.0
    for function, func_units in getattr(self._kernel_structure, resource_type).items():
      for unit, resources in func_units.items():
        total += multipliers[function][unit] * (resources[resource_idx] if resource_type == "func_units" else resources)
    return total
  
  
  def _count_mem_resources(self, cfg, resource_idx):
    """Predict the number of resources of the given type needed for memories in a given configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    resource_idx : {0, 1, 2}
      Resource type: 0 = BRAMs, 1 = registers, 2 = LUTs
    
    Returns
    -------
    float
      Resource count
    """
    self.load_kernel_structure()
    
    total = 0.0
    for mem, (length, width) in self._kernel_structure.memories.items():
      partition_factor = self.get_partition_factor(cfg, mem)      
      bank_length = math.ceil(length / partition_factor)
      resources = self._map_memories(bank_length, width)
      total += partition_factor * resources[resource_idx]
    return total


  def _update_multipliers(self, multipliers, scope, cfg, function, loop_name, multiplier, resource_type):
    """Increase the resource multipliers of a function or loop based on the configuration.
    
    Parameters
    ----------
    multipliers : dict
      Data structure with multipliers for each resource
    scope : dict
      Data structure describing loop or function
    cfg : dict
      Configuration
    function : str
      Function name
    loop_name : str
      Loop name
    multiplier : float
      Multiplier associated with outer loops of the current loop
    resource_type : {"func_units", "registers", "multiplexers"}
      Resource type
    """
    param = function + '|' + loop_name + '|unroll'
    factor = cfg[param] if param in cfg else 1.0
    multiplier *= factor
    for loop in scope["loops"]:
      self._update_multipliers(multipliers, loop, cfg, function, loop['name'], multiplier, resource_type)
    for unit in scope[resource_type]:
      multipliers[function][unit] = max(multiplier, multipliers[function][unit])


  def _map_memories(self, length, width):
    """Determine how many 18-Kb BRAMs are needed for an array with the given dimensions.
    
    Parameters
    ----------
    length : int
      Number of elements in the array
    width : int
      Width of each array element in bits
      
    Returns
    -------
    int
      Number of 18-Kb BRAMs needed
      
    Notes
    -----
    This function tries two greedy algorithms and returns the best result.  The result is likely not optimal, but
    hopefully it is good enough. 
    """
    if length >= MIN_MEM_LENGTH:
      brams = min(self._fit_mem(length, width), self._overfit_mem(length, width))
      regs = 0
      luts = 0
    else:
      brams = 0
      regs = 2 * width
      luts = math.ceil(length * width / 64)
    return (brams, regs, luts)

      
  def _fit_mem(self, length, width):
    """Determine how many 18-Kb BRAMs are needed for an array with the given dimensions if we fit the width exactly.
    
    Parameters
    ----------
    length : int
      Number of elements in the array
    width : int
      Width of each array element in bits

    Returns
    -------
    int
      Number of 18-Kb BRAMs needed
    """
    remaining = width
    total = 0
    for mem_size in sorted(MEM_SIZES):
      count = remaining / mem_size[1]
      remaining -= count * mem_size[1]
      count *= math.ceil(length / mem_size[0])
      total += count
    return total


  def _overfit_mem(self, length, width):
    """Determine how many 18-Kb BRAMs are needed for an array with the given dimensions if we allow overfitting.
    
    Parameters
    ----------
    length : int
      Number of elements in the array
    width : int
      Width of each array element in bits
      
    Returns
    -------
    int
      Number of 18-Kb BRAMs needed      
    """
    mem_sizes = sorted(MEM_SIZES, reverse = True)
    widest_mem = mem_sizes[-1]
    count = width / widest_mem[1]
    remaining = width - count * widest_mem[1]
    count *= math.ceil(length / widest_mem[0])
    total = count
    mem_size = next(x for x in mem_sizes if x[1] >= remaining)
    total += math.ceil(length / mem_size[0])
    return total

#######################################################################################################################

class SimpleLutCountModel(SimpleAreaModel):
  """A first-order model for LUT consumption"""
  
  def predict(self, cfg):
    """Predict the number of LUTs needed for a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      LUT consumption
    """
    count = self._count_non_mem_resources(cfg, "func_units", 1)
    count += self._count_non_mem_resources(cfg, "multiplexers", None)
    count += self._count_mem_resources(cfg, 2)
    return count

#######################################################################################################################

class SimpleRegisterCountModel(SimpleAreaModel):
  """A first-order model for register consumption"""
  
  def predict(self, cfg):
    """Predict the number of registers needed for a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      Register consumption
    """
    count = self._count_non_mem_resources(cfg, "func_units", 2)
    count += self._count_non_mem_resources(cfg, "registers", None)
    count += self._count_mem_resources(cfg, 1)
    return count

#######################################################################################################################

class SimpleDspCountModel(SimpleAreaModel):
  """A first-order model for DSP consumption"""
  
  def predict(self, cfg):
    """Predict the number of DSPs needed for a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      DSP consumption
    """
    return self._count_non_mem_resources(cfg, "func_units", 0)

#######################################################################################################################

class SimpleBramCountModel(SimpleAreaModel):
  """A first-order model for 18-Kb BRAM consumption"""
  
  def predict(self, cfg):
    """Predict the number of BRAMs needed for a configuration.
    
    Parameters
    ----------
    cfg : dict
      Configuration
    
    Returns
    -------
    float
      DSP consumption
    """
    return self._count_mem_resources(cfg, 0)
