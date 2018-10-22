open_project HLS
set_top encrypt
add_files $::env(HLS_TUNER_ROOT)/TestApps/MachSuite/aes/Sources/aes.c -cflags "-I $::env(HLS_TUNER_ROOT)/TestApps/MachSuite/common"
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 5 -name default
csynth_design

