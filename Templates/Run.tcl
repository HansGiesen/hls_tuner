# Script for running application on FPGA
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Connect to hw_server daemon.
connect

# Load TCL functions for PS initialization.
source {impl_output_dir}/_sds/p0/ipi/pynq.sdk/ps7_init.tcl

# Reset the system.
targets -set -nocase -filter {{name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1*"}} -index 0
rst -system
after 3000

# Write the bitstream into the FPGA.
targets -set -filter {{jtag_cable_name =~ "Xilinx PYNQ-Z1*" && level == 0}} -index 1
fpga -file {impl_output_dir}/_sds/p0/ipi/pynq.runs/impl_1/pynq_wrapper.bit

# Load the memory map of the design.
targets -set -nocase -filter {{name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1*"}} -index 0
loadhw {impl_output_dir}/_sds/p0/ipi/pynq.sdk/pynq.hdf

# Initialize the PS.
ps7_init
ps7_post_config

# Load the executable into the FPGA.
targets -set -nocase -filter {{name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx PYNQ-Z1*"}} -index 0
dow {impl_output_dir}/{target_file}

# Set a breakpoint at the exit function.
bpadd -addr &exit

# Wait until the breakpoint has been reached.
con -block

