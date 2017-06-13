#!/bin/bash -e

if [ $# -ne 1 ]
then
  echo "Usage: $0 <Directory with makefiles of SDSoC project>"
  exit 1
fi

cd "$1"
for FILE in $(find -name subdir.mk)
do
  [ ! -f "$FILE.orig" ] && cp "$FILE" "$FILE.orig"
  sed -e "s/^\tsds++/\tsds++ \$(I3_PARAMETERS)/" "$FILE.orig" > "$FILE"
done

