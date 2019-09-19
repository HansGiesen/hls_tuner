open_project encrypt
set_top encrypt
add_files /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c -cflags "-I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common -Wall -O3 -DPIPELINE_II_SUB=11 -DUNROLL_FACTOR_EXP1=2 -DUNROLL_FACTOR_EXP2=1 -DUNROLL_FACTOR_ECB1=32 -DUNROLL_FACTOR_ECB3=7 -DUNROLL_FACTOR_ECB2=4 -DPIPELINE_II_ADDKEY=8 -DPIPELINE_II_ECB1=16 -DPIPELINE_II_ECB2=6 -DPIPELINE_II_ECB3=12 -DPIPELINE_II_EXP1=1 -DPIPELINE_II_EXP2=2 -DPIPELINE_EXP2 -DPIPELINE_EXP1 -DUNROLL_FACTOR_ADDKEY=9 -DUNROLL_FACTOR_SUB=14 -DUNROLL_FACTOR_MIX=4 -DPIPELINE_II_CPKEY=6 -DPIPELINE_II_MIX=1 -DPIPELINE_ECB2 -DUNROLL_FACTOR_CPKEY=4 -DPIPELINE_MIX -D __SDSCC__ -m32 -I /mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I /scratch/local/tmp.soPlafqy6w -w"
open_solution "solution" -reset
set_part { xc7z020clg400-1 }
# synthesis directives
create_clock -period 10.000000
set_clock_uncertainty 27.0%
config_rtl -reset_level low
source /scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname encrypt -acc
exit
