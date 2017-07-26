#!/bin/bash -e

Check_last_lines()
{
  LINES=$(tail -n 2 $1)
  LINE_1=$(echo "${LINES}" | head -n 1)
  LINE_2=$(echo "${LINES}" | tail -n 1)
  echo "$LINE_1" | grep -q "$2" &&
  echo "$LINE_2" | grep -q "$3"
  return $?
}

for FILE in Build_*/Build_output.log
do
  if grep -q 'Finished building target:' $FILE; then
    echo "$FILE: Built successfully."
  elif grep -q '\[Place 30-640\]' $FILE; then
    echo "$FILE: Too many LUTs."
  elif grep -q '\[SCHED 204-80\]' $FILE; then
    echo "$FILE: Dependency error."
  elif grep -q '\[XFORM 203-504\]' $FILE; then
    echo "$FILE: Too much unrolling."
  elif grep -q '\[XFORM 203-1403\]' $FILE; then
    echo "$FILE: Too many load/store instructions."
  elif grep -q '\[Timing 38-282\]' $FILE; then
    echo "$FILE: Timing constraints not met."
  elif grep -q '\[Timing 38-246\]' $FILE; then
    echo "$FILE: Thread error."
  elif grep -q 'Scripts Generated : progress 0%' $FILE; then
    echo "$FILE: Unknown error at 0% of bitstream generation."
  elif Check_last_lines $FILE 'Moving function' 'failed$'; then
    echo "$FILE: Unknown error while moving function."
  elif Check_last_lines $FILE 'This may take some time' 'failed$'; then
    echo "$FILE: Unknown error while generating bitstream."
  else
    echo "$FILE: Unclassified"
  fi
done

