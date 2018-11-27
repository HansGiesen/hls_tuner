#!/bin/bash -e
HOSTS=$(qhost | grep ic | awk '{ print $1 }')
for HOST in ${HOSTS}
do
  echo "Checking ${HOST}..."
  qsub -S /bin/bash -v PATH -cwd -e /dev/null -sync yes -now yes -q "*@${HOST}*" ${PWD}/Check_node.sh || true
done
cat *.sh.o*
rm *.sh.o*
