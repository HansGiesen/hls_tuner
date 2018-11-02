#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/a.g.bc ${1+"$@"}
