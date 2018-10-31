#!/bin/bash -e
#
# Script for all build steps preceding synthesis, including high-level synthesis
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Export the root of the HLS tuner repository.
export HLS_TUNER_ROOT=/mnt/icgridio2/safe/giesen/HLS_tuner/1

# Create a temporary directory in /scratch/local.  We build everything in /scratch/local because building on the NFS
# disk is sometimes failing for unclear reasons.  Originally, I suspected that long path names were the culprit, but I
# could not confirm (or disprove) it.
DIR=$(mktemp -d -p /scratch/local)
if [ -z "${DIR}" ]
then
  echo "Cannot create temporary directory."
  exit 1
fi

# Store the hostname and directory in a text file such that we can find the temporary directory back should we want to
# do that.
echo $(hostname) ${DIR} > Host.txt

# Go to the temporary directory.
cd ${DIR}

# Run presynthesis.  If there is an error, we do not exit this script because we still have to move (intermediate)
# results back.
# The /usr/bin/timeout tool changes its process group, which means that the children do not receive TERM signals, so we
# use a custom timeout script.
${HLS_TUNER_ROOT}/Scripts/Timeout.sh -t 600 \
  make -f /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/Makefile clean all \
  JOBS=4 \
  THREADS=1 \
  HLS_TUNER_DEFINES=' -DPIPELINE_CPKEY -DUNROLL_FACTOR_EXP1=2 -DUNROLL_FACTOR_EXP2=2 -DUNROLL_FACTOR_ECB1=28 -DUNROLL_FACTOR_ECB3=12 -DUNROLL_FACTOR_ECB2=1 -DPIPELINE_II_ADDKEY=4 -DPIPELINE_II_ECB1=31 -DPIPELINE_II_ECB2=5 -DPIPELINE_II_ECB3=4 -DPIPELINE_II_EXP1=1 -DPIPELINE_II_EXP2=2 -DPIPELINE_EXP1 -DUNROLL_FACTOR_ADDKEY=15 -DUNROLL_FACTOR_SUB=13 -DUNROLL_FACTOR_MIX=1 -DPIPELINE_SUB -DPIPELINE_II_CPKEY=2 -DPIPELINE_II_MIX=2 -DPIPELINE_ECB2 -DPIPELINE_ECB1 -DPIPELINE_ADDKEY -DUNROLL_FACTOR_CPKEY=15 -DPIPELINE_II_SUB=9' \
  DATA_MOVER_CLOCK=2 \
  KERNEL_CLOCK=3 && EXIT_CODE=0 || EXIT_CODE=$?

# Make sure that there is something in the temporary directory.
if [ -d ${DIR} -a -z "$(find ${DIR} -prune -empty -type d 2> /dev/null)" ]
then
  # Move everything from the temporary directory back to the output directory.  We make sure that hidden files are
  # moved as well.
  cd -
  shopt -s dotglob
  mv ${DIR}/* .
  rmdir ${DIR}
fi

# Output messages about the build result.  The tuner script relies on these messages.
[ "${EXIT_CODE}" == 143 ] && echo "Presynthesis timed out."
[ "${EXIT_CODE}" == 0 ] && echo "Presynthesis has completed successfully."

# Output the exit code.
exit ${EXIT_CODE}

