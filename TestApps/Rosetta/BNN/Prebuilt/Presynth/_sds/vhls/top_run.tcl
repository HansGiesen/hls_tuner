open_project top
set_top top
add_files /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/accel/Accel.cpp -cflags "-I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils -O3 -DHLS_COMPILE -DRUN_STANDALONE -Wall -Wno-unused-label -D __SDSCC__ -m32 -I /mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/accel -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I /var/tmp/tmp.yK7okjyWNi -w"
open_solution "solution" -reset
set_part { xc7z020clg400-1 }
# synthesis directives
create_clock -period 10.000000
set_clock_uncertainty 27.0%
config_rtl -reset_level low
source /var/tmp/tmp.yK7okjyWNi/_sds/vhls/top.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname top -acc
exit
