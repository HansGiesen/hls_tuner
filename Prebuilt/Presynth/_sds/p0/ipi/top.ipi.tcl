puts "Running ipi tcl"
open_project /scratch/local/tmp.7aow7oM1KP/_sds/p0/ipi/pynq.xpr
set_param cg.skipHiddenCheck true
set_property ip_repo_paths {/scratch/local/tmp.7aow7oM1KP/_sds/iprepo/repo /mnt/icgridio2/safe/SDSoC/SDx/2017.1/data/ip/xilinx /mnt/icgridio2/safe/SDSoC/SDx/2017.1/data/cache/xilinx} [current_fileset]
set_param bd.skipSupportedIPCheck true
update_ip_catalog -rebuild
close_project
open_project /scratch/local/tmp.7aow7oM1KP/_sds/p0/ipi/pynq.xpr
set_param bd.get_bd_obj.warning_on_empty_result true
set_param bd.propagate.allow_set_readonly_param true
source top.bd.tcl
regenerate_bd_layout
bd::util_cmd set_bd_source SDSoC [current_bd_design]
save_bd_design
report_ip_status
validate_bd_design
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1
if {[llength [get_files *.bd]] == 1 } {
  set bd_file [get_files *.bd]
} else {
  set bd_file [get_files pynq.bd]
}
set_property synth_checkpoint_mode Hierarchical [get_files $bd_file]
check_ip_cache -use_project_cache
generate_target all [get_files $bd_file]
file mkdir /scratch/local/tmp.7aow7oM1KP/_sds/p0/ipi/pynq.sdk
write_hwdef -force -file /scratch/local/tmp.7aow7oM1KP/_sds/p0/ipi/pynq.sdk/pynq.hdf
close_project
