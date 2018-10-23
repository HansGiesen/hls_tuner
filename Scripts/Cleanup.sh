#!/bin/bash -e
HOSTS=$(qhost | grep ic | awk '{ print $1 }')
for HOST in ${HOSTS}
do
  echo "Cleaning up ${HOST}..."
  qsub -S /bin/bash -v PATH -cwd -e /dev/null -o /dev/null -now yes -q "*@${HOST}*" ${PWD}/Cleanup_node.sh || true
done

