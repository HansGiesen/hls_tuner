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
    id 58 \
    name k \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_k \
    op interface \
    ports { m_axi_k_AWVALID { O 1 bit } m_axi_k_AWREADY { I 1 bit } m_axi_k_AWADDR { O 32 vector } m_axi_k_AWID { O 1 vector } m_axi_k_AWLEN { O 32 vector } m_axi_k_AWSIZE { O 3 vector } m_axi_k_AWBURST { O 2 vector } m_axi_k_AWLOCK { O 2 vector } m_axi_k_AWCACHE { O 4 vector } m_axi_k_AWPROT { O 3 vector } m_axi_k_AWQOS { O 4 vector } m_axi_k_AWREGION { O 4 vector } m_axi_k_AWUSER { O 1 vector } m_axi_k_WVALID { O 1 bit } m_axi_k_WREADY { I 1 bit } m_axi_k_WDATA { O 1024 vector } m_axi_k_WSTRB { O 128 vector } m_axi_k_WLAST { O 1 bit } m_axi_k_WID { O 1 vector } m_axi_k_WUSER { O 1 vector } m_axi_k_ARVALID { O 1 bit } m_axi_k_ARREADY { I 1 bit } m_axi_k_ARADDR { O 32 vector } m_axi_k_ARID { O 1 vector } m_axi_k_ARLEN { O 32 vector } m_axi_k_ARSIZE { O 3 vector } m_axi_k_ARBURST { O 2 vector } m_axi_k_ARLOCK { O 2 vector } m_axi_k_ARCACHE { O 4 vector } m_axi_k_ARPROT { O 3 vector } m_axi_k_ARQOS { O 4 vector } m_axi_k_ARREGION { O 4 vector } m_axi_k_ARUSER { O 1 vector } m_axi_k_RVALID { I 1 bit } m_axi_k_RREADY { O 1 bit } m_axi_k_RDATA { I 1024 vector } m_axi_k_RLAST { I 1 bit } m_axi_k_RID { I 1 vector } m_axi_k_RUSER { I 1 vector } m_axi_k_RRESP { I 2 vector } m_axi_k_BVALID { I 1 bit } m_axi_k_BREADY { O 1 bit } m_axi_k_BRESP { I 2 vector } m_axi_k_BID { I 1 vector } m_axi_k_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name k_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_offset \
    op interface \
    ports { k_offset { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name rc_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rc_read \
    op interface \
    ports { rc_read { I 8 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 8 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


