#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/.autopilot/db/a.g.bc ${1+"$@"}