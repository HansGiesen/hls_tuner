#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /var/tmp/tmp.yK7okjyWNi/_sds/vhls/top/solution/.autopilot/db/a.g.bc ${1+"$@"}
