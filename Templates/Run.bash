#!/bin/bash -e
#
# Script for running application on FPGA
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Load Vivado paths and libraries.
source {sdsoc_root}/settings64.sh

# Go to the output directory.
cd {output_dir}

# Initialize the serial device.
stty -F {serial_device} {serial_baudrate} raw

# Handler to kill serial device logging process if it is running.
Cleanup()
{{
  [ -n "${{PROCESS}}" ] && kill ${{PROCESS}}
}}

# Install the handler.
trap Cleanup EXIT

# Store the output of the serial device in a log file.
cat {serial_device} > {serial_log} &

# Remember the process ID such that we can kill it later.
PROCESS=$!

# Run the application on the board.
sdx -batch -source {tcl_script}

