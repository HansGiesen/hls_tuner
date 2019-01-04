open_project HLS
set_top top
add_files $::env(HLS_TUNER_ROOT)/TestApps/Rosetta/BNN/Sources/Accel.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-1-i-es1} -tool vivado
create_clock -period 5 -name default
csynth_design

