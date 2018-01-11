#!/bin/bash -e

Check_last_lines()
{
  LINES=$(tail -n 2 "$1")
  LINE_1=$(echo "${LINES}" | head -n 1)
  LINE_2=$(echo "${LINES}" | tail -n 1)
  echo "$LINE_1" | grep -q "$2" &&
  echo "$LINE_2" | grep -q "$3"
  return $?
}

for DIR in $(echo Build_* | tr ' ' '\n' | sort)
do
  FILE="$DIR/Build_output.log"
  if [ ! -f "$FILE" ]; then
    echo "$FILE: Build launch failed."
  elif grep -q 'Build timed out.' "$FILE"; then
    echo "$FILE: Build timed out."
  elif grep -q '\[Place 30-640\]' "$FILE"; then
    echo "$FILE: Too many LUTs."
  elif grep -q '\[SCHED 204-80\]' "$FILE"; then
    echo "$FILE: Dependency error."
  elif grep -q '\[XFORM 203-504\]' "$FILE"; then
    echo "$FILE: Too much unrolling."
  elif grep -q '\[XFORM 203-1403\]' "$FILE"; then
    echo "$FILE: Too many load/store instructions."
  elif grep -q '\[Timing 38-282\]' "$FILE"; then
    echo "$FILE: Timing constraints not met."
  elif grep -q '\[Timing 38-246\]' "$FILE"; then
    echo "$FILE: Thread error."
  elif grep -q 'Scripts Generated : progress 0%' "$FILE"; then
    echo "$FILE: Unknown error at 0% of bitstream generation."
  elif Check_last_lines "$FILE" 'Moving function' 'failed$'; then
    echo "$FILE: Unknown error while moving function."
  elif grep -q 'Finished building target:' "$FILE"; then
    echo "$FILE: Built successfully."
  else
    echo "$FILE: Unclassified"
  fi
done

