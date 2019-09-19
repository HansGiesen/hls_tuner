create_project prj -part xcvu9p-flga2104-2-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_frsqrt_6_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_frsqrt_6_full_dsp_32]]
}
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_faddfsub_2_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_faddfsub_2_full_dsp_32]]
}
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_fmul_1_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_fmul_1_max_dsp_32]]
}
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_fcmp_0_no_dsp_32]]
}
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_fsqrt_6_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_fsqrt_6_no_dsp_32]]
}
source "/mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001/proj_cholesky/solution1/syn/verilog/cholesky_top_ap_fadd_2_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cholesky_top_ap_fadd_2_no_dsp_32]]
}
