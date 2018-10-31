# This script segment is generated automatically by AutoPilot

set id 5
set name a0_encrypt_lshr_256ncud
set corename simcore_lshr
set op lshr
set stage_num 6
set max_latency -1
set registered_input 1
set in0_width 256
set in0_signed 0
set in1_width 256
set in1_signed 0
set out_width 256
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_lshr] == "ap_gen_simcore_lshr"} {
eval "ap_gen_simcore_lshr { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_lshr, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op lshr
set corename ShiftnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeshift] == "::AESL_LIB_VIRTEX::xil_gen_pipeshift"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeshift { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeshift, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name buf_r \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r \
    op interface \
    ports { m_axi_buf_r_AWVALID { O 1 bit } m_axi_buf_r_AWREADY { I 1 bit } m_axi_buf_r_AWADDR { O 32 vector } m_axi_buf_r_AWID { O 1 vector } m_axi_buf_r_AWLEN { O 32 vector } m_axi_buf_r_AWSIZE { O 3 vector } m_axi_buf_r_AWBURST { O 2 vector } m_axi_buf_r_AWLOCK { O 2 vector } m_axi_buf_r_AWCACHE { O 4 vector } m_axi_buf_r_AWPROT { O 3 vector } m_axi_buf_r_AWQOS { O 4 vector } m_axi_buf_r_AWREGION { O 4 vector } m_axi_buf_r_AWUSER { O 1 vector } m_axi_buf_r_WVALID { O 1 bit } m_axi_buf_r_WREADY { I 1 bit } m_axi_buf_r_WDATA { O 8 vector } m_axi_buf_r_WSTRB { O 1 vector } m_axi_buf_r_WLAST { O 1 bit } m_axi_buf_r_WID { O 1 vector } m_axi_buf_r_WUSER { O 1 vector } m_axi_buf_r_ARVALID { O 1 bit } m_axi_buf_r_ARREADY { I 1 bit } m_axi_buf_r_ARADDR { O 32 vector } m_axi_buf_r_ARID { O 1 vector } m_axi_buf_r_ARLEN { O 32 vector } m_axi_buf_r_ARSIZE { O 3 vector } m_axi_buf_r_ARBURST { O 2 vector } m_axi_buf_r_ARLOCK { O 2 vector } m_axi_buf_r_ARCACHE { O 4 vector } m_axi_buf_r_ARPROT { O 3 vector } m_axi_buf_r_ARQOS { O 4 vector } m_axi_buf_r_ARREGION { O 4 vector } m_axi_buf_r_ARUSER { O 1 vector } m_axi_buf_r_RVALID { I 1 bit } m_axi_buf_r_RREADY { O 1 bit } m_axi_buf_r_RDATA { I 8 vector } m_axi_buf_r_RLAST { I 1 bit } m_axi_buf_r_RID { I 1 vector } m_axi_buf_r_RUSER { I 1 vector } m_axi_buf_r_RRESP { I 2 vector } m_axi_buf_r_BVALID { I 1 bit } m_axi_buf_r_BREADY { O 1 bit } m_axi_buf_r_BRESP { I 2 vector } m_axi_buf_r_BID { I 1 vector } m_axi_buf_r_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name buf_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_offset \
    op interface \
    ports { buf_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name ctx \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx \
    op interface \
    ports { m_axi_ctx_AWVALID { O 1 bit } m_axi_ctx_AWREADY { I 1 bit } m_axi_ctx_AWADDR { O 32 vector } m_axi_ctx_AWID { O 1 vector } m_axi_ctx_AWLEN { O 32 vector } m_axi_ctx_AWSIZE { O 3 vector } m_axi_ctx_AWBURST { O 2 vector } m_axi_ctx_AWLOCK { O 2 vector } m_axi_ctx_AWCACHE { O 4 vector } m_axi_ctx_AWPROT { O 3 vector } m_axi_ctx_AWQOS { O 4 vector } m_axi_ctx_AWREGION { O 4 vector } m_axi_ctx_AWUSER { O 1 vector } m_axi_ctx_WVALID { O 1 bit } m_axi_ctx_WREADY { I 1 bit } m_axi_ctx_WDATA { O 1024 vector } m_axi_ctx_WSTRB { O 128 vector } m_axi_ctx_WLAST { O 1 bit } m_axi_ctx_WID { O 1 vector } m_axi_ctx_WUSER { O 1 vector } m_axi_ctx_ARVALID { O 1 bit } m_axi_ctx_ARREADY { I 1 bit } m_axi_ctx_ARADDR { O 32 vector } m_axi_ctx_ARID { O 1 vector } m_axi_ctx_ARLEN { O 32 vector } m_axi_ctx_ARSIZE { O 3 vector } m_axi_ctx_ARBURST { O 2 vector } m_axi_ctx_ARLOCK { O 2 vector } m_axi_ctx_ARCACHE { O 4 vector } m_axi_ctx_ARPROT { O 3 vector } m_axi_ctx_ARQOS { O 4 vector } m_axi_ctx_ARREGION { O 4 vector } m_axi_ctx_ARUSER { O 1 vector } m_axi_ctx_RVALID { I 1 bit } m_axi_ctx_RREADY { O 1 bit } m_axi_ctx_RDATA { I 1024 vector } m_axi_ctx_RLAST { I 1 bit } m_axi_ctx_RID { I 1 vector } m_axi_ctx_RUSER { I 1 vector } m_axi_ctx_RRESP { I 2 vector } m_axi_ctx_BVALID { I 1 bit } m_axi_ctx_BREADY { O 1 bit } m_axi_ctx_BRESP { I 2 vector } m_axi_ctx_BID { I 1 vector } m_axi_ctx_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name ctx_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctx_offset \
    op interface \
    ports { ctx_offset { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


