#!/bin/bash -e
#
# Script for implementation step
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# This handler makes sure that the temporary directory is cleaned up.
Cleanup()
{{
  # Make sure that the variables are set.
  [ -z "${{TEMP_DIR}}" -o -z "${{OUTPUT_DIR}}" ] && return

  # Move everything from the temporary directory back to the output directory.  We make sure that hidden files are
  # moved as well.  We run this as another group to guarantee that this process will not be killed.
  setsid bash -c "shopt -s dotglob; mv ${{TEMP_DIR}}/* ${{OUTPUT_DIR}} || true; rmdir ${{TEMP_DIR}}"
}}

# Install the exit handler.
trap Cleanup EXIT

# Export the root of the HLS tuner repository.
export HLS_TUNER_ROOT={tuner_root}

# Remember the output directory.
OUTPUT_DIR=${{PWD}}

# Create a temporary directory in /scratch/local.  We build everything in /scratch/local because building on the NFS
# disk is sometimes failing for unclear reasons.  Originally, I suspected that long path names were the culprit, but I
# could not confirm (or disprove) it.
TEMP_DIR=$(mktemp -d -p /scratch/local)
if [ -z "${{TEMP_DIR}}" ]
then
  echo "Cannot create temporary directory."
  exit 1
fi

# Store the hostname and directory in a text file such that we can find the temporary directory back should we want to
# do that.
echo $(hostname) ${{TEMP_DIR}} > Host.txt

# Go to the temporary directory.
cd ${{TEMP_DIR}}

# Copy the Vivado project to the temporary directory, making sure hidden files are copied as well.
shopt -s dotglob
cp -r {synth_output_dir}/* .

# Remove files from synthesis that are not relevant.
rm *.log Synth.bash

# Load Vivado paths and libraries.
source ${{SDSOC_ROOT}}/settings64.sh

# Run implementation.  If there is an error, we do not exit this script because we still have to move (intermediate)
# results to the output directory.
/usr/bin/time -f "Maximum residential set size: %M KB" \
  vivado -nolog -nojournal -mode batch -source {tcl_script}

# Output messages about the build result.  The tuner script relies on this message.
echo "Implementation has completed successfully."

