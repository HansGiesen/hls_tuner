#!/bin/bash -e
#
# Script for all build steps preceding synthesis, including high-level synthesis
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Export the root of the HLS tuner repository.
export HLS_TUNER_ROOT={tuner_root}

# Create a temporary directory in /scratch/local.  We build everything in /scratch/local because building on the NFS
# disk is sometimes failing for unclear reasons.  Originally, I suspected that long path names were the culprit, but I
# could not confirm (or disprove) it.
DIR=$(mktemp -d -p /scratch/local)
if [ -z "${{DIR}}" ]
then
  echo "Cannot create temporary directory."
  exit 1
fi

# Store the hostname and directory in a text file such that we can find the temporary directory back should we want to
# do that.
echo $(hostname) ${{DIR}} > Host.txt

# Go to the temporary directory.
cd ${{DIR}}

# Run presynthesis.  If there is an error, we do not exit this script because we still have to move (intermediate)
# results back.
/usr/bin/time -f "Maximum residential set size: %M KB" \
  make -f {make_file} clean all \
    JOBS={max_jobs} \
    THREADS={max_threads} \
    HLS_TUNER_DEFINES='{defines}' \
    DATA_MOVER_CLOCK={data_mover_clock} \
    KERNEL_CLOCK={kernel_clock} && EXIT_CODE=0 || EXIT_CODE=$?

# Make sure that there is something in the temporary directory.
if [ -d ${{DIR}} -a -z "$(find ${{DIR}} -prune -empty -type d 2> /dev/null)" ]
then
  # Move everything from the temporary directory back to the output directory.  We make sure that hidden files are
  # moved as well.
  cd -
  shopt -s dotglob
  mv ${{DIR}}/* .
  rmdir ${{DIR}}
fi

# Output messages about the build result.  The tuner script relies on these messages.
[ "${{EXIT_CODE}}" == 0 ] && echo "Presynthesis has completed successfully."

# Output the exit code.
exit ${{EXIT_CODE}}

