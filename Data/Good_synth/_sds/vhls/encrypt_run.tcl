open_project encrypt
set_top encrypt
add_files /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c -cflags "-I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common -Wall -O3 -D __SDSCC__ -m32 -I /mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I /scratch/local/tmp.7aow7oM1KP -w"
open_solution "solution" -reset
set_part { xc7z020clg400-1 }
# synthesis directives
create_clock -period 7.000001
set_clock_uncertainty 27.0%
config_rtl -reset_level low
source /scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname encrypt -acc
exit
