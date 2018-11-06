#!/bin/bash -e
#
# Script for all build steps preceding synthesis, including high-level synthesis
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

# Run presynthesis.  If there is an error, we do not exit this script because we still have to move (intermediate)
# results back.
/usr/bin/time -f "Maximum residential set size: %M KB" \
  make -f {make_file} clean all \
    JOBS={max_jobs} \
    THREADS={max_threads} \
    HLS_TUNER_DEFINES='{defines}' \
    DATA_MOVER_CLOCK={data_mover_clock} \
    KERNEL_CLOCK={kernel_clock}

# Output a message that presynthesis completed successfully.  The tuner relies on this message.
echo "Presynthesis has completed successfully."

