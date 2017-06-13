#!/bin/bash -e

if [ $# -ne 1 ]
then
  echo "Usage: $0 <Directory with makefiles of SDSoC project>"
  exit 1
fi

source ${SDSOC_ROOT}/settings64.sh

cd "$1"
for FILE in $(make -np | grep CPP_SRCS | cut -d" " -f3-)
do
  grep '^#pragma[[:space:]]\+i3[[:space:]]parameter[[:space:]]\+' "$FILE" || true
done

