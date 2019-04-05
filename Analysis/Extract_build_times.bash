#!/bin/bash -e
NUMBER=1
while [ -d $(printf "%04d" ${NUMBER}) ]
do
  DIR=$(printf "%04d" ${NUMBER})

  PRESYNTH_START=$(date -r ${DIR}/Presynth/Presynth.bash +%s)
  PRESYNTH_END=$(date -r ${DIR}/Presynth/Presynth_output.log +%s)
  SYNTH_START=$(date -r ${DIR}/Synth/Synth.bash +%s)
  SYNTH_END=$(date -r ${DIR}/Synth/Synth_output.log +%s)
  IMPL_START=$(date -r ${DIR}/Impl/Impl.bash +%s)
  IMPL_END=$(date -r ${DIR}/Impl/Impl_output.log +%s)

  if [ -f ${DIR}/Run.bash ]
  then
    RUN_START=$(date -r ${DIR}/Run.bash +%s)
    RUN_END=$(date -r ${DIR}/Run_output.log +%s)
  else
    RUN_START=0
    RUN_END=0
  fi

  PRESYNTH_DURATION=$((${PRESYNTH_END} - ${PRESYNTH_START}))
  SYNTH_DURATION=$((${SYNTH_END} - ${SYNTH_START}))
  IMPL_DURATION=$((${IMPL_END} - ${IMPL_START}))
  RUN_DURATION=$((${RUN_END} - ${RUN_START}))

  echo "${PRESYNTH_DURATION}, ${SYNTH_DURATION}, ${IMPL_DURATION}, ${RUN_DURATION}"

  NUMBER=$(($NUMBER + 1))
done

