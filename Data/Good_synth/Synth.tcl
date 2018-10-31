#!/bin/bash -e
#
# Script for synthesis
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Set the maximum number of threads.
set_param general.maxThreads 1

# Open Vivado project.
open_project _sds/p0/ipi/pynq.xpr

# Reset synthesis runs.
reset_run synth_1

# Start synthesis asynchronously.
launch_runs synth_1 -jobs 4

# Wait until synthesis has completed.
wait_on_run synth_1

# Report whether synthesis failed and exit.
set Status [get_property STATUS [get_runs synth_1]]
set Progress [get_property PROGRESS [get_runs synth_1]]
if {$Status == "synth_design Complete!" && $Progress == "100%"} {
  exit 0
}
puts "Synthesis failed."
exit 1

