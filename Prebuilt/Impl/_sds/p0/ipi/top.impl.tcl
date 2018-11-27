# ***************************************************
# Open the Vivado Project
# ***************************************************
open_project /scratch/local/tmp.soPlafqy6w/_sds/p0/ipi/pynq.xpr
set_param general.maxThreads 4
# ***************************************************
# Run synthesis and implementation
# ***************************************************
set_property STEPS.OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE Default [get_runs impl_1]
set_msg_config -id {[Pfi 67-13]} -new_severity INFO
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
set synth_ok 0
set synth_status [get_property STATUS [get_runs synth_1]]
set synth_progress [get_property PROGRESS [get_runs synth_1]]
if {$synth_status == "synth_design Complete!" && $synth_progress == "100%"} {
  set synth_ok 1
}
if {$synth_ok == 0} {
  puts "ERROR: \[SystemLinker 70-4834\]: Synthesis failed : status $synth_status : progress $synth_progress"
  exit 1
}
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
# ***************************************************
# Save bitstream for SD card creation
# ***************************************************
set bitstream [get_property top [current_fileset]].bit
set directory [get_property directory [current_run]]
file copy -force [file join $directory $bitstream] [file join $directory bitstream.bit]
