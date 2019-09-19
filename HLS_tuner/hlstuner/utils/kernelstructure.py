"""
Classes for capturing the kernel structure

Created on Jul 1, 2019
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

import glob, logging, re, os, yaml
from xml.etree import ElementTree
from collections import defaultdict, Counter

log = logging.getLogger(__name__)

#######################################################################################################################

class KernelStructure(object):
  """Class capturing the kernel structure

  Parameters
  ----------
  output_dir : str, optional
    Output directory of build.  All kernel information is extracted from the reports in this directory.
  
  Attributes
  ----------
  functions : dict
    Data structure describing each function in a kernel
  top_function : str
    Top-level function of kernel
  func_units : dict
    Data structure describing the resource consumption of each functional unit
  registers : dict
    Data structure describing the resource consumption of each register
  _function_map : dict
    Map translating abbreviated function names into the full names
  _memories : dict
    Dictionary with all memories and their dimensions
  """

  def __init__(self, output_dir = None):
    """Extract information about all functions, loops, and their latencies from HLS reports."""
    if output_dir:
      self._disassemble(output_dir)
      self._read_full_names(output_dir)
      self._read_latencies(output_dir)
      self._assign_loop_bounds(output_dir)
      self._assign_calls(output_dir)
      self._decompose_latency()
      self._read_top_function(output_dir)
      self._read_memories(output_dir)
      self._map_mem_aliases(output_dir)
      self._read_mem_deps(output_dir)
      self._assign_resources(output_dir)
    
    
  def _disassemble(self, output_dir):
    sdsoc_root = os.environ['SDSOC_ROOT']
    version = os.path.basename(sdsoc_root)
    disas_path = sdsoc_root + '/../../Vivado/' + version + '/lnx64/tools/clang/bin/llvm-dis'
    os.system(disas_path + ' ' + output_dir + '/proj_cholesky/solution1/.autopilot/db/a.o.3.bc')
    
    
  def _read_full_names(self, output_dir):
    """Make a map in self._function_map that contains the full name for each abbreviated function name.
    
    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    self._function_map = {}
    with open(output_dir + '/vivado_hls.log', "r") as input_file:
      for line in input_file:
        match = re.search(r'WARNING: \[XFORM 203-631\] Renaming function \'(\S+)\' to \'(\S+)\'', line)
        if match:
          src, dst = match.groups()
          self._function_map[dst] = src
          
          
  def _get_full_name(self, name):
    """Return the full name of a function name that may be abbreviated.
    
    Parameters
    ----------
    name : str
      Abbreviated function name
      
    Returns
    -------
    str
      Full function name
    """
    return self._function_map.get(name, name)
        
      
  def _read_latencies(self, output_dir):
    """Extract the latency of all functions and loops from the HLS reports.
    
    This function extracts the latencies of all functions and loops from the HLS reports, and puts them in a list
    (self.functions).
    
    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/syn/report/*_csynth.xml')    
    self.functions = {}
    for report in reports:
      tree = ElementTree.parse(report)
      name = self._get_full_name(tree.find('UserAssignments/TopModelName').text)
      latency = int(tree.find('PerformanceEstimates/SummaryOfOverallLatency/Worst-caseLatency').text)
      function = defaultdict(list, {"name": name, "latency": latency})
      node = tree.find('PerformanceEstimates/SummaryOfLoopLatency')
      loops = []
      if node != None:
        for loop_node in node:
          loops.append(self._read_latencies_inner(loop_node))
      function["loops"] = loops
      self.functions[name] = function
      
              
  def _read_latencies_inner(self, loop_node):
    """Extract the latencies of one loop and its inner loops from an HLS report.
    
    Parameters
    ----------
    loop_node : ElementTree.Element
      Node in XML file with loop currently being parsed
      
    Returns
    -------
    dict
      Latency information collected about the loop and subloops
    """
    node = loop_node.find('TripCount/range/max')
    if node == None:
      node = loop_node.find('TripCount')
    iterations = int(node.text)

    loop = defaultdict(list, {"name": loop_node.tag, "iterations": iterations, "loops": []})

    node = loop_node.find('IterationLatency/range/max')
    if node == None:
      node = loop_node.find('IterationLatency')
    if node != None:
      loop['iter_latency'] = int(node.text)
      # The reported latency is sometimes too high due to a bug.  Therefore, we compute it ourselves.
      loop['latency'] = iterations * loop['iter_latency']
    else:
      node = loop_node.find('PipelineDepth')
      if node == None:
        node = loop_node.find('PipelineDepth/range/max')
      loop['pipeline_depth'] = int(node.text)

      node = loop_node.find('PipelineII')
      if node == None:
        node = loop_node.find('PipelineII/range/max')
      loop['pipeline_ii'] = int(node.text)
      
      loop['latency'] = (iterations - 1) * loop['pipeline_ii'] + loop['pipeline_depth'] - 1
    
    for child in loop_node:
      if child.tag not in ['IterationLatency', 'TripCount', 'Latency', 'PipelineII', 'PipelineDepth']:
        loop['loops'].append(self._read_latencies_inner(child))
        
    return loop


  def _assign_loop_bounds(self, output_dir):
    """Assign a tuple with the first and last clock cycle to each loop in self.functions.
    
    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/.autopilot/db/*.verbose.sched.rpt')
    for report in reports:
      function, bounds = self._read_loop_bounds(report)
      self._assign_bounds(function, bounds)


  def _read_loop_bounds(self, report):
    """Create a list with the first and last cycle of each loop based on the static schedule.
    
    Parameters
    ----------
    report : str
      Path to static schedule report
      
    Returns
    -------
    str
      Name of the function associated with the report
    list of tuples with 2 ints
      Each tuple consists of the first and last cycle of a loop
    
    Notes
    -----
    This function is based on the assumption that each loop is solely composed of a number of forward transitions,
    followed by a single transition back in time.  This cannot be guaranteed in general, but I believe that this
    assumption is valid in the Vivado HLS schedules to enable clean schedule diagrams in the GUI.
    
    In hindsight, the loop bounds could have been extracted more reliably based on the calls to
    _ssdm_op_SpecLoopName in the code.
    """
    with open(report, "r") as input_file:
      text = input_file.read()
      
    function = self._get_full_name(re.search(r'== Vivado HLS Report for \'(.+)\'', text).group(1))
    result = re.search(r"\* FSM state transitions: \n(.*)\n\n\* FSM state operations", text, re.DOTALL)
    edges = result.group(1)
    bounds = []
    for edge in edges.split('\n'):
      src, dsts = re.match(r"(\d+) --> (.*)$", edge).groups()
      for dst in dsts.split(' '):
        if dst != "" and int(dst) <= int(src):
          bounds.append((int(dst), int(src)))
          
    return function, bounds


  def _assign_bounds(self, function, bounds):
    """Take a list with loop bounds and assign them to each function.
    
    Parameters
    ----------
    function : str
      Function to which the bounds must be assigned
    bounds : list of tuples with 2 ints
      Each tuple consists of the first and last cycle of a loop
    
    Notes
    -----
    We assume here that the order of the functions and loops in the reports is identical to the order in the state
    description.  This is the case for my testcases, but it may not always be the case.    
    """
    bounds.sort(key = lambda bound: (bound[0], -bound[1]))
    self._assign_bounds_core(self.functions[function], bounds)
    if len(bounds) != 0:
      raise RuntimeError("More loops were discovered in the schedule than suggested by the function hierarchy.\n"
                         "Most likely this means that one of the assumptions on which the parser relies is not\n"
                         "satisfied for all designs.")


  def _assign_bounds_core(self, scope, bounds):
    """Assign loop bounds to a loop and its inner loops.

    Parameters
    ----------
    scope : dict
      Data structure representing a function or loop    
    bounds : list of tuples with 2 ints
      Each tuple consists of the first and last cycle of a loop
    
    Returns
    -------
    int
      Highest upper bound that has been encountered in this loop or inner loops
    
    Notes
    -----
    Note that I have encountered a case in which the cycles of the inner loop are not entirely contained within the
    cycles of the outer loop.  In that particular case, the outer loop ended in the same cycle as the inner loop
    started.  This is also fixed here.
    """
    upper_bounds = [0]
    for loop in scope['loops']:
      lower, upper = bounds.pop(0)
      upper_bounds.append(upper)
      max_upper_bound = self._assign_bounds_core(loop, bounds)
      loop['bounds'] = (lower, max(upper, max_upper_bound))
    return max(upper_bounds)


  def _assign_calls(self, output_dir):
    """Locate all calls in the schedule and assign them to the functions and loops in self.functions.
    
    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/.autopilot/db/*.verbose.sched.rpt')
    for report in reports:
      function = self._get_full_name(re.search('.*/(.*?)\.verbose\.sched\.rpt', report).group(1))
      with open(report, "r") as input_file:
        for line in input_file:
          result = re.search(r'^ST_(\d+) : Operation \d+ \[1/2\] .+   --->   ".+ = call .* @(\S+)\(', line)
          if result != None:
            cycle, callee = result.groups()
            self._assign_call(self._get_full_name(callee), int(cycle), self.functions[function])


  def _assign_call(self, function, cycle, scope):
    """Assign one call to the correct loop based on the cycle in which it is executed.
    
    Parameters
    ----------
    function : str
      Function that is called
    cycle : int
      Clock cycle in which function is called
    scope : dict
      Data structure describing function or loop
      
    Returns
    -------
    bool
      True if function call has been processed and False otherwise
    """
    for loop in scope["loops"]:
      if self._assign_call(function, cycle, loop):
        return True
    bounds = scope.get("bounds")
    if bounds == None or cycle >= bounds[0] and cycle <= bounds[1]:
      scope["calls"].append(function)
      return True
    else:
      return False


  def _decompose_latency(self):
    """Decompose latency into portions associated with functions or loops.
    
    Compute the contribution to the latency of each function or loop after factoring out the contribution of subloops
    or functions that are called.  The result is in the latency fields of self.functions.
    """
    for function in self.functions.values():
      self._decompose_latency_core(function)

          
  def _decompose_latency_core(self, scope):
    """Decompose the latency of a single function or loop.
    
    Parameters
    ----------
    scope : dict
      Data structure representing a function or a loop
      
    Returns
    -------
    float
      Latency of current function or loop
    """
    if "latency_const_1" not in scope:
      
      latency = 0
      for loop in scope["loops"]:
        latency += self._decompose_latency_core(loop)
      for function in scope["calls"]:
        name = function.replace('.', '_')
        latency += self._decompose_latency_core(self.functions[name])
        
      if 'iter_latency' in scope:
        scope["latency_const_1"] = scope['iter_latency'] - latency
        scope["latency_const_2"] = 0
      else:
        scope["latency_const_1"] = 0
        scope["latency_const_2"] = scope["latency"] - latency
        
      if scope["latency_const_1"] < 0 or scope["latency_const_2"] < 0:
        raise RuntimeError("The latencies do not add up.")
      
    return scope["latency"]
  
  
  def _read_top_function(self, output_dir):
    """Read the name of the top-level function and assign it to self.top_function.

    output_dir : str
      Output directory of build
    """    
    tree = ElementTree.parse(output_dir + '/proj_cholesky/solution1/syn/report/csynth.xml')
    self.top_function = tree.find('UserAssignments/TopModelName').text
  
  
  def _read_memories(self, output_dir):
    """Read all the memories from the HLS reports and put them in self.memories.

    output_dir : str
      Output directory of build
    """
    self.memories = {}
    self._read_global_memories(output_dir)
    self._read_local_memories(output_dir)

    
  def _read_global_memories(self, output_dir):
    """Read all global memories from the a.o.3.ll file and put them in self.memories.

    output_dir : str
      Output directory of build
    """
    pattern = re.compile(r'@(\S+) = .*global \[(\d+) x (\S+)\]')
    with open(output_dir + '/proj_cholesky/solution1/.autopilot/db/a.o.3.ll', 'r') as input_file:
      for line in input_file:
        match = re.match(pattern, line)
        if match:
          name = match.group(1)
          length = int(match.group(2))
          data_type = match.group(3)
          width = 32 if data_type == 'float' else int(data_type[1:])
          self.memories[name] = (length, width)


  def _read_local_memories(self, output_dir):
    """Read all local memories from the HLS reports and put them in self.memories.

    output_dir : str
      Output directory of build
    """
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/.autopilot/db/*.verbose.sched.rpt')
    function_pattern = re.compile(r'.*/(.*?)\.verbose\.sched\.rpt')
    mem_pattern = re.compile(r'%(\S+) = alloca \[(\d+) x (\S+)\]')
    for report in reports:
      function = self._get_full_name(re.search(function_pattern, report).group(1))
      with open(report, 'r') as input_file:
        for line in input_file:
          match = re.search(mem_pattern, line)
          if match:
            name = match.group(1)
            length = int(match.group(2))
            data_type = match.group(3)
            width = 32 if data_type == 'float' else int(data_type[1:])
            self.memories[function + '|' + name] = (length, width)


  def _map_mem_aliases(self, output_dir):
    """Determine all aliases for the memories and put them in `self.mem_aliases`.

    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    function_pattern = re.compile(r'define .* @(\S+)\((.*)\) .*{')
    call_pattern = re.compile(r' = call .* @(\S+)\((.*)\)')
    functions = {}
    with open(output_dir + '/proj_cholesky/solution1/.autopilot/db/a.o.3.ll', 'r') as input_file:
      for line in input_file:
        match = re.match(function_pattern, line)
        if match:
          name, params = match.groups()
          function = {}
          functions[self._get_full_name(name)] = function
          function["params"] = params
          calls = []
          continue

        match = re.search(call_pattern, line)
        if match:
          name, args = match.groups()
          calls.append((name, args))
          continue

        if line == '}\n':
          function["calls"] = calls
          function = None

    self.mem_aliases = {}
    pattern = re.compile(r'\[.*\]\* %(\S+)$')
    for func_name in self.functions:
      function = functions[func_name]
      for param in function["params"].split(','):
        match = re.search(pattern, param)
        if match:
          name = match.group(1)
          mems = self.trace_to_mems(functions, func_name, name)
          if len(mems) > 0:
            self.mem_aliases[func_name + '|' + name] = mems

    for mem in self.memories:
      if '|' not in mem:
        for function in self.functions:
          name = function + '|' + mem
          if name not in self.mem_aliases:
            self.mem_aliases[name] = [mem]    


  def trace_to_mems(self, functions, function, mem):
    """Trace a memory reference to memories.
    
    Sometimes, a memory that is referenced in a function is propagated to that function from a parent function.  This
    function traces such references back to the memories.
    
    Parameters
    ----------
    functions : dict
      Data structure describing function parameters, calls and address variable to memory mapping
    function : str
      Function with memory reference
    mem : str
      Variable referring to a memory 
      
    Returns
    -------
    list of str
      Memories
    """
    if function + '|' + mem in self.memories:
      return [function + '|' + mem]
    if mem in self.memories:
      return [mem]

    pattern = re.compile(r'[%@](\S+)$')
    pos = 0
    for param in functions[function]["params"].split(','):
      name = re.search(pattern, param).group(1)
      if mem == name:
        break
      pos += 1
      
    mems = []
    for caller, info in functions.items():
      for callee, params in info["calls"]:
        if callee == function:
          param = params.split(',')[pos]
          mem = re.match(pattern, param).group(1)
          mems.append(self.trace_to_mem(functions, caller, mem))
    
    return mems

            
  def _read_mem_deps(self, output_dir):
    """Read memory dependencies of loops from the static schedule and put them in `self.functions`.
    
    Parameters
    ----------
    output_dir : str
      Output directory of build
    """
    getelemptr_pattern = re.compile(r'%(\S+) = getelementptr .*\[.+\]\* [%@](\S+),')
    load_pattern = re.compile(r'ST_(\d+) .* \[1/2\] .* = load \S+ %(\S+),')
    store_pattern = re.compile(r'ST_(\d+) .* "store \S+ \S+, \S+ %(\S+),')
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/.autopilot/db/*.verbose.sched.rpt')
    for report in reports:
      function = self._get_full_name(re.search('.*/(.*?)\.verbose\.sched\.rpt', report).group(1))
      addr_map = {}
      with open(report, 'r') as input_file:
        for line in input_file:
          match = re.search(getelemptr_pattern, line)
          if match:
            addr_var, mem = match.groups()
            addr_map[addr_var] = mem            
        
      with open(report, 'r') as input_file:
        for line in input_file:
          match = re.search(load_pattern, line)
          if not match:
            match = re.search(store_pattern, line)
          if match:
            cycle = int(match.group(1))
            addr_var = match.group(2)
            mem = addr_map[addr_var]
            mems = self.mem_aliases.get(function + '|' + mem)
            if mems:
              for loop in self.functions[function]['loops']:
                self._assign_access(loop, cycle, mems)


  def _assign_access(self, loop, cycle, mems):
    """Assign memory accesses to a loop based on the clock cycle.
    
    Parameters
    ----------
    loop : dict
      Data structure representing the loop
    cycle : int
      Clock cycle in which the memory is accessed.
    mems : str
      Memories that are accessed
    """
    done = False
    bounds = loop['bounds']
    if cycle >= bounds[0] and cycle <= bounds[1]:
      for inner_loop in loop['loops']:
        if self._assign_access(inner_loop, cycle, mems):
          done = True
      if not done:
        for mem in mems:
          loop.setdefault('accesses', Counter())[mem] += 1
        done = True
    return done
    
    
  def _assign_resources(self, output_dir):
    """Assign resource consumption to each function and loop.

    Parameters
    ----------
    output_dir : str
      Output directory
      
    Notes
    -----
    Shared resources are assigned to each function or loop using them.
    """
    self.func_units = {}
    self.registers = {}
    self.multiplexers = {}
    reports = glob.glob(output_dir + '/proj_cholesky/solution1/.autopilot/db/*.verbose.bind.rpt')
    for report in reports:
      function = self._get_full_name(re.search('.*/(.*?)\.verbose\.bind\.rpt', report).group(1))
      with open(report, 'r') as input_file:
        text = input_file.read()

      # The model is described in XML format, but special characters are not properly encoded, so the XML parser cannot
      # handle it.
      comp_to_cycle_map = defaultdict(list)
      op_to_cycle_map = defaultdict(list)
      for comp, content in re.findall(r'\n<comp.*?name="(\S+)">(.*?)\n</comp>', text, re.DOTALL):
        match = re.search(r'\n<opset="(.+) "/>', content)
        if match:
          for operation in match.group(1).split():
            match = re.match(r'(\S+)/(\d+)', operation)
            if match:
              op = match.group(1)
              cycle = int(match.group(2))
              comp_to_cycle_map[comp].append(cycle)
              op_to_cycle_map[op].append(cycle)
              
      self.func_units[function] = {}
      func_units = re.search(r'\n\* Functional unit list:\n(.*)\n\nMemories:', text, re.DOTALL).group(1)
      for line in func_units.split('\n'):
        columns = [column.strip() for column in line.split('|')]
        operation = columns[1]
        func_unit = columns[2]
        if func_unit == 'Functional Unit':
          try:
            lut_column = columns.index('LUT')
          except ValueError:
            lut_column = None            
          try:
            reg_column = columns.index('FF')
          except ValueError:
            reg_column = None
          try:
            dsp_column = columns.index('DSP48E')
          except ValueError:
            dsp_column = None
        if func_unit in ['Functional Unit', '', len(func_unit) * '-'] or operation == 'call':
          continue
        lut_cnt = int(columns[lut_column]) if lut_column else 0 
        reg_cnt = int(columns[reg_column]) if reg_column else 0 
        dsp_cnt = int(columns[dsp_column]) if dsp_column else 0 
        for cycle in comp_to_cycle_map[func_unit]:
          self._assign_resources_core(func_unit, cycle, self.functions[function], "func_unit")
          self.func_units[function][func_unit] = (dsp_cnt, lut_cnt, reg_cnt)

      self.registers[function] = {}
      regs = re.search(r'\n\* Register list:\n(.*)\n\n\* Multiplexer \(MUX\) list:', text, re.DOTALL).group(1)
      for line in regs.split('\n'):
        columns = line.split('|')
        if len(columns) == 1:
          continue
        reg = columns[1].strip()
        if reg in ['', 'Total']:
          continue
        match = re.match(r'(\S+)_reg_\d+', reg)
        if match:
          operator = match.group(1)
        else:
          operator = reg
        reg_cnt = int(columns[2])
        for cycle in op_to_cycle_map[operator]:
          self._assign_resources_core(reg, cycle, self.functions[function], "register")
        self.registers[function].setdefault(reg, 0)
        self.registers[function][reg] += reg_cnt
          
      self.multiplexers[function] = {}
      muxes = re.search(r'\n\* Multiplexer \(MUX\) list: \n(.*)\n\n\n\n\* Summary:', text, re.DOTALL).group(1)
      for line in muxes.split('\n'):
        columns = line.split('|')
        mux = columns[1].strip()
        if mux in ['Comp', 'Total', len(mux) * '-']:
          continue
        # It appears that the Delay column is always missing.  Occasionally, the LUT column is missing too.
        if len(columns) < 8:
          continue
        mux_cnt = int(columns[7])
        cycles = comp_to_cycle_map[mux]
        if len(cycles) == 0:
          operation = re.match(r'(\S+)_reg_\d+', mux).group(1)
          cycles = op_to_cycle_map[operation]
        for cycle in cycles:
          self._assign_resources_core(mux, cycle, self.functions[function], "multiplexer")
        self.multiplexers[function].setdefault(mux, 0)
        self.multiplexers[function][mux] += mux_cnt


  def _assign_resources_core(self, func_unit, cycle, scope, resource_type):
    """Assign functional units to the correct function or loop based on the cycle in which they are used.
    
    Parameters
    ----------
    func_unit : str
      Name of functional unit
    cycle : int
      Clock cycle in which the resources are used
    scope : dict
      Data structure representing a function or loop
    """
    for loop in scope["loops"]:
      if self._assign_resources_core(func_unit, cycle, loop, resource_type):
        return True
    bounds = scope.get("bounds")
    if bounds == None or cycle >= bounds[0] and cycle <= bounds[1]:
      scope.setdefault(resource_type + "s", set()).add(func_unit)
      return True
    else:
      return False
      

  def store(self, filename):
    """Store the kernel structure in a YAML file.
    
    Parameters
    ----------
    filename : str
      Destination YAML file
    """
    data = {'functions': self.functions, 'top_function': self.top_function, 'func_units': self.func_units,
            'registers': self.registers, 'multiplexers': self.multiplexers, 'mem_aliases': self.mem_aliases,
            'memories': self.memories}
    with open(filename, 'w') as output_file:
      yaml.dump(data, output_file)
      
      
  def load(self, filename):
    """Load the kernel structure from a YAML file.
    
    Parameters
    ----------
    filename : str
      Source YAML file
    """
    with open(filename, 'r') as input_file:
      data = yaml.load(input_file, Loader = yaml.FullLoader)
      
    self.functions = data['functions']
    self.top_function = data['top_function']
    self.func_units = data['func_units']
    self.registers = data['registers']
    self.multiplexers = data['multiplexers']
    self.mem_aliases = data['mem_aliases']
    self.memories = data['memories']


  def match_pragmas(self, pragmas):
    """Ensure that pragmas match with elements of the kernel.
    
    Parameters
    ----------
    pragmas : dict
      Data structure describing the pragmas
    """
    for pragma in pragmas:
      if pragma['type'] == "unroll":
        if not any(self._find_loop(loop, pragma['loop']) for loop in self.functions[pragma['function']]['loops']):
          raise RuntimeError('Unroll pragma applied to unknown loop.')
      elif pragma['type'] == "partition":
        if not self.mem_aliases.get(pragma['function'] + '|' + pragma['variable']):
          raise RuntimeError('Array_partition pragma applied to unknown memory.')
      elif pragma['type'] == "inline":
        if pragma['function'] not in self.functions:
          raise RuntimeError('Inline pragma applied to unknown function.')
        
        
  def _find_loop(self, loop, loop_name):
    """Return True if the current loop or any of its inner loops have the provided name.
    
    Parameters
    ----------
    loop : dict
      Data structure describing a loop
    loop_name : str
      Loop that we are searching for
      
    Returns
    -------
    bool
      `True` if the loop was found, and `False` otherwise.
    """ 
    for inner_loop in loop['loops']:
      if self._find_loop(inner_loop, loop_name):
        return True
    return loop['name'] == loop_name
