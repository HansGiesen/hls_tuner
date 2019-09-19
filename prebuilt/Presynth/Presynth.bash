#!/bin/bash -e
#
# Script for all build steps preceding synthesis, including high-level synthesis
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# This handler makes sure that the temporary directory is cleaned up.
Cleanup()
{
  # Make sure that the variables are set.
  [ -z "${TEMP_DIR}" -o -z "${OUTPUT_DIR}" ] && return

  # Move everything from the temporary directory back to the output directory.  We make sure that hidden files are
  # moved as well.  We run this as another group to guarantee that this process will not be killed.
  setsid bash -c "shopt -s dotglob; mv ${TEMP_DIR}/* ${OUTPUT_DIR} || true; rmdir ${TEMP_DIR}"
}

# Install the exit handler.
trap Cleanup EXIT

# Export the root of the HLS tuner repository.
export HLS_TUNER_ROOT=/mnt/icgridio2/safe/giesen/HLS_tuner/1

# Remember the output directory.
OUTPUT_DIR=${PWD}

# Create a temporary directory in /scratch/local.  We build everything in /scratch/local because building on the NFS
# disk is sometimes failing for unclear reasons.  Originally, I suspected that long path names were the culprit, but I
# could not confirm (or disprove) it.
TEMP_DIR=$(mktemp -d -p /scratch/local)
if [ -z "${TEMP_DIR}" ]
then
  echo "Cannot create temporary directory."
  exit 1
fi

# Store the hostname and directory in a text file such that we can find the temporary directory back should we want to
# do that.
echo $(hostname) ${TEMP_DIR} > Host.txt

# Go to the temporary directory.
cd ${TEMP_DIR}

# Run presynthesis.  If there is an error, we do not exit this script because we still have to move (intermediate)
# results back.  We check for a timeout here because we don't want limit the time needed for issuing a job to the
# grid.  The /usr/bin/timeout tool changes its process group, which means that the children do not receive TERM
# signals, so we use a custom timeout script.
${HLS_TUNER_ROOT}/Scripts/Timeout.bash -t 900 \
  /usr/bin/time -f "Runtime: %e s\nMaximum residential set size: %M KB" -o /dev/stdout \
    make -f /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/Makefile clean all \
      JOBS=4 \
      THREADS=4 \
      HLS_TUNER_DEFINES=' -DPIPELINE_II_SUB=11 -DUNROLL_FACTOR_EXP1=2 -DUNROLL_FACTOR_EXP2=1 -DUNROLL_FACTOR_ECB1=32 -DUNROLL_FACTOR_ECB3=7 -DUNROLL_FACTOR_ECB2=4 -DPIPELINE_II_ADDKEY=8 -DPIPELINE_II_ECB1=16 -DPIPELINE_II_ECB2=6 -DPIPELINE_II_ECB3=12 -DPIPELINE_II_EXP1=1 -DPIPELINE_II_EXP2=2 -DPIPELINE_EXP2 -DPIPELINE_EXP1 -DUNROLL_FACTOR_ADDKEY=9 -DUNROLL_FACTOR_SUB=14 -DUNROLL_FACTOR_MIX=4 -DPIPELINE_II_CPKEY=6 -DPIPELINE_II_MIX=1 -DPIPELINE_ECB2 -DUNROLL_FACTOR_CPKEY=4 -DPIPELINE_MIX' \
      DATA_MOVER_CLOCK=2 \
      KERNEL_CLOCK=2 && EXIT_CODE=0 || EXIT_CODE=$?

# Output a message about the build result.  The tuner script relies on these messages.
[ "${EXIT_CODE}" == 143 ] && echo "Presynthesis timed out."
[ "${EXIT_CODE}" == 0 ] && echo "Presynthesis has completed successfully."
 
# Output the exit code.
exit ${EXIT_CODE}

