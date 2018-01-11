#!/bin/bash -e

if [ "$#" != 2 ]
then
  echo "Usage: <Executable to monitor> <Log file>"
  exit 1
fi

EXECUTABLE="$1"
LOG_FILE="$2"

Cleanup()
{
  kill "${PROCESS_ID_1}" "${PROCESS_ID_2}"
  wait 2> /dev/null

  if [ -n "${TEMP_FILE_1}" ]
  then
    gzip -c "${TEMP_FILE_1}" > "${LOG_FILE}"
    rm "${TEMP_FILE_1}"
  fi

  if [ -n "${TEMP_FILE_2}" ]
  then
    gzip -c "${TEMP_FILE_2}" >> "${LOG_FILE}"
    rm "${TEMP_FILE_2}"
  fi
}

trap Cleanup EXIT

TEMP_FILE_1=$(mktemp)
TEMP_FILE_2=$(mktemp)

(
  echo "Hostname: $(hostname)"
  echo "Output of ulimit:"
  ulimit -a
  printf '%*s\n' "${COLUMNS:-80}" '' | tr ' ' =

  TIME=0
  while true
  do
    echo "Time ${TIME}"
    echo
    echo "User processes in use: $(ps ux | wc -l)"
    echo "System-wide processes in use: $(ps aux | wc -l)"
    echo "User threads in use: $(ps uxH | wc -l)"
    echo "System-wide threads in use: $(ps auxH | wc -l)"
    echo
    HANDLES=$(lsof 2> /dev/null | grep " ${USER} " | wc -l)
    echo "Open user file handles: ${HANDLES}"
    HANDLES=$(awk '{ print $1 }' /proc/sys/fs/file-nr)
    echo "Open file handles system-wide: ${HANDLES}"
    echo
    echo "Output of free:"
    free -b
    echo
    echo "Output of top:"
    COLUMNS=512 top -cbn 2 d 0.01 | awk '/^top/ { Count = Count + 1 } Count == 2 { print $0 }'
    printf '%*s\n' "${COLUMNS:-80}" '' | tr ' ' -
    sleep 1
    TIME=$((TIME + 1))
  done
) > "${TEMP_FILE_1}" &
PROCESS_ID_1=$!

(
  printf '%*s\n' "${COLUMNS:-80}" '' | tr ' ' =
  echo "Output of dmesg:"
  dmesg -wH
) > "${TEMP_FILE_2}" &
PROCESS_ID_2=$!

eval "${EXECUTABLE}"

