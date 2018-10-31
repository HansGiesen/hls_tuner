# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
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
    id 6 \
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
    id 7 \
    name key \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key \
    op interface \
    ports { m_axi_key_AWVALID { O 1 bit } m_axi_key_AWREADY { I 1 bit } m_axi_key_AWADDR { O 32 vector } m_axi_key_AWID { O 1 vector } m_axi_key_AWLEN { O 32 vector } m_axi_key_AWSIZE { O 3 vector } m_axi_key_AWBURST { O 2 vector } m_axi_key_AWLOCK { O 2 vector } m_axi_key_AWCACHE { O 4 vector } m_axi_key_AWPROT { O 3 vector } m_axi_key_AWQOS { O 4 vector } m_axi_key_AWREGION { O 4 vector } m_axi_key_AWUSER { O 1 vector } m_axi_key_WVALID { O 1 bit } m_axi_key_WREADY { I 1 bit } m_axi_key_WDATA { O 8 vector } m_axi_key_WSTRB { O 1 vector } m_axi_key_WLAST { O 1 bit } m_axi_key_WID { O 1 vector } m_axi_key_WUSER { O 1 vector } m_axi_key_ARVALID { O 1 bit } m_axi_key_ARREADY { I 1 bit } m_axi_key_ARADDR { O 32 vector } m_axi_key_ARID { O 1 vector } m_axi_key_ARLEN { O 32 vector } m_axi_key_ARSIZE { O 3 vector } m_axi_key_ARBURST { O 2 vector } m_axi_key_ARLOCK { O 2 vector } m_axi_key_ARCACHE { O 4 vector } m_axi_key_ARPROT { O 3 vector } m_axi_key_ARQOS { O 4 vector } m_axi_key_ARREGION { O 4 vector } m_axi_key_ARUSER { O 1 vector } m_axi_key_RVALID { I 1 bit } m_axi_key_RREADY { O 1 bit } m_axi_key_RDATA { I 8 vector } m_axi_key_RLAST { I 1 bit } m_axi_key_RID { I 1 vector } m_axi_key_RUSER { I 1 vector } m_axi_key_RRESP { I 2 vector } m_axi_key_BVALID { I 1 bit } m_axi_key_BREADY { O 1 bit } m_axi_key_BRESP { I 2 vector } m_axi_key_BID { I 1 vector } m_axi_key_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name key_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_key_offset \
    op interface \
    ports { key_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name cpk \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cpk \
    op interface \
    ports { m_axi_cpk_AWVALID { O 1 bit } m_axi_cpk_AWREADY { I 1 bit } m_axi_cpk_AWADDR { O 32 vector } m_axi_cpk_AWID { O 1 vector } m_axi_cpk_AWLEN { O 32 vector } m_axi_cpk_AWSIZE { O 3 vector } m_axi_cpk_AWBURST { O 2 vector } m_axi_cpk_AWLOCK { O 2 vector } m_axi_cpk_AWCACHE { O 4 vector } m_axi_cpk_AWPROT { O 3 vector } m_axi_cpk_AWQOS { O 4 vector } m_axi_cpk_AWREGION { O 4 vector } m_axi_cpk_AWUSER { O 1 vector } m_axi_cpk_WVALID { O 1 bit } m_axi_cpk_WREADY { I 1 bit } m_axi_cpk_WDATA { O 8 vector } m_axi_cpk_WSTRB { O 1 vector } m_axi_cpk_WLAST { O 1 bit } m_axi_cpk_WID { O 1 vector } m_axi_cpk_WUSER { O 1 vector } m_axi_cpk_ARVALID { O 1 bit } m_axi_cpk_ARREADY { I 1 bit } m_axi_cpk_ARADDR { O 32 vector } m_axi_cpk_ARID { O 1 vector } m_axi_cpk_ARLEN { O 32 vector } m_axi_cpk_ARSIZE { O 3 vector } m_axi_cpk_ARBURST { O 2 vector } m_axi_cpk_ARLOCK { O 2 vector } m_axi_cpk_ARCACHE { O 4 vector } m_axi_cpk_ARPROT { O 3 vector } m_axi_cpk_ARQOS { O 4 vector } m_axi_cpk_ARREGION { O 4 vector } m_axi_cpk_ARUSER { O 1 vector } m_axi_cpk_RVALID { I 1 bit } m_axi_cpk_RREADY { O 1 bit } m_axi_cpk_RDATA { I 8 vector } m_axi_cpk_RLAST { I 1 bit } m_axi_cpk_RID { I 1 vector } m_axi_cpk_RUSER { I 1 vector } m_axi_cpk_RRESP { I 2 vector } m_axi_cpk_BVALID { I 1 bit } m_axi_cpk_BREADY { O 1 bit } m_axi_cpk_BRESP { I 2 vector } m_axi_cpk_BID { I 1 vector } m_axi_cpk_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name cpk_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cpk_offset \
    op interface \
    ports { cpk_offset { I 32 vector } } \
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


