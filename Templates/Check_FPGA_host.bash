#!/bin/bash -e
#
# Script for implementation step
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#######################################################################################################################

# Check whether a serial device with the given name exists.
if [ ! -c '{serial_device}' ]
then
  echo "Not found"
  exit
fi

# Check whether the serial device is readible and writable.
if [ ! -r '{serial_device}' -o ! -w '{serial_device}' ]
then
  echo 'Not accessible'
  exit
fi

# Everything went well.
echo "Success"

