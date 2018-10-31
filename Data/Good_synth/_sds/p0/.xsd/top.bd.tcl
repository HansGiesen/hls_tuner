
if {[llength [get_files *.bd]] == 1} {
  set diagram_handle [open_bd_design [get_files *.bd]]
} else {
  set diagram_handle [open_bd_design [get_files pynq.bd]]
}

upgrade_ip -quiet [get_bd_cells * -quiet -hierarchical -filter {VLNV =~ "xilinx.com:ip:processing_system7:*"}]
upgrade_ip -quiet [get_bd_cells * -quiet -hierarchical -filter {VLNV =~ "xilinx.com:ip:zynq_ultra_ps_e:*"}]

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for pynq
#---------------------------
set processing_system7_0 [get_bd_cell /processing_system7_0]
    
set_property -dict [ list \
  CONFIG.PCW_USE_M_AXI_GP0 1 \
  CONFIG.PCW_USE_S_AXI_ACP 1 \
  CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL 1 \
  ] $processing_system7_0
set xlconcat_0 [get_bd_cell /xlconcat_0]
    
set_property -dict [ list \
  CONFIG.NUM_PORTS 16 \
  ] $xlconcat_0

#---------------------------
# Instantiating dm_0
#---------------------------
set dm_0 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 dm_0]
  
set_property -dict [ list \
  CONFIG.C_DLYTMR_RESOLUTION {1250} \
  CONFIG.C_SG_LENGTH_WIDTH {23} \
  CONFIG.C_INCLUDE_SG {0} \
  CONFIG.C_INCLUDE_MM2S {1} \
  CONFIG.C_INCLUDE_S2MM {0} \
  CONFIG.C_INCLUDE_MM2S_SF {1} \
  CONFIG.C_INCLUDE_MM2S_DRE {1} \
  CONFIG.C_MM2S_BURST_SIZE {64} \
  CONFIG.C_M_AXI_MM2S_DATA_WIDTH {64} \
  CONFIG.C_M_AXIS_MM2S_TDATA_WIDTH {64} \
  ] $dm_0

#---------------------------
# Instantiating encrypt_1
#---------------------------
set encrypt_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:encrypt:1.0 encrypt_1]
  

#---------------------------
# Instantiating encrypt_1_if
#---------------------------
set encrypt_1_if [create_bd_cell -type ip -vlnv xilinx.com:ip:adapter_v3_0:1.0 encrypt_1_if]
  
set_property -dict [ list \
  CONFIG.M_AXIMM_ADDR_WIDTH {32} \
  CONFIG.C_INPUT_SCALAR_0_WIDTH {32} \
  CONFIG.S_AXIS_BRAM_0_WIDTH {8} \
  CONFIG.S_AXIS_BRAM_0_DMWIDTH {64} \
  CONFIG.S_AXIS_BRAM_0_DEPTH {32} \
  CONFIG.S_AXIS_BRAM_0_MB_DEPTH {1} \
  CONFIG.C_INPUT_SCALAR_1_WIDTH {32} \
  CONFIG.C_NUM_INPUT_BRAMs {1} \
  CONFIG.C_N_INPUT_SCALARS {2} \
  CONFIG.C_NUM_AXIMMs {2} \
  ] $encrypt_1_if

#---------------------------
# Instantiating axi_ic_processing_system7_0_M_AXI_GP0
#---------------------------
set axi_ic_processing_system7_0_M_AXI_GP0 [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_processing_system7_0_M_AXI_GP0]
  
set_property -dict [ list \
  CONFIG.NUM_MI {2} \
  CONFIG.NUM_SI {1} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M01_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_REGSLICE {1} \
  ] $axi_ic_processing_system7_0_M_AXI_GP0

#---------------------------
# Instantiating axi_ic_processing_system7_0_S_AXI_ACP
#---------------------------
set axi_ic_processing_system7_0_S_AXI_ACP [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_processing_system7_0_S_AXI_ACP]
  
set_property -dict [ list \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {3} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M00_HAS_DATA_FIFO {2} \
  CONFIG.S00_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_DATA_FIFO {2} \
  CONFIG.S01_HAS_REGSLICE {1} \
  CONFIG.S01_HAS_DATA_FIFO {2} \
  CONFIG.S02_HAS_REGSLICE {1} \
  CONFIG.S02_HAS_DATA_FIFO {2} \
  ] $axi_ic_processing_system7_0_S_AXI_ACP

#---------------------------
# Instantiating sds_irq_const
#---------------------------
set sds_irq_const [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 sds_irq_const]
  
set_property -dict [ list \
  CONFIG.CONST_WIDTH {1} \
  CONFIG.CONST_VAL {0} \
  ] $sds_irq_const

#---------------------------
# Instantiating axcache_0xE
#---------------------------
set axcache_0xE [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 axcache_0xE]
  
set_property -dict [ list \
  CONFIG.CONST_WIDTH {4} \
  CONFIG.CONST_VAL {14} \
  ] $axcache_0xE

#---------------------------
# Connectivity
#---------------------------
connect_bd_net  \
  [get_bd_pins /encrypt_1_if/ap_clk] \
  [get_bd_pins /encrypt_1/ap_clk] \

connect_bd_net  \
  [get_bd_pins /encrypt_1_if/ap_resetn] \
  [get_bd_pins /encrypt_1/ap_rst_n] \

connect_bd_net  \
  [get_bd_pins /encrypt_1_if/ap_iscalar_0_dout] \
  [get_bd_pins /encrypt_1/ctx_offset] \

connect_bd_net  \
  [get_bd_pins /encrypt_1_if/ap_iscalar_1_dout] \
  [get_bd_pins /encrypt_1/buf_offset] \

connect_bd_net  \
  [get_bd_pins /processing_system7_0/FCLK_CLK3] \
  [get_bd_pins /dm_0/s_axi_lite_aclk] \
  [get_bd_pins /dm_0/m_axi_mm2s_aclk] \
  [get_bd_pins /processing_system7_0/M_AXI_GP0_ACLK] \
  [get_bd_pins /encrypt_1_if/s_axi_aclk] \
  [get_bd_pins /encrypt_1_if/s_axis_bram_0_aclk] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/S00_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/M00_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/M01_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/M00_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S02_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/ACLK] \
  [get_bd_pins /processing_system7_0/S_AXI_ACP_ACLK] \

connect_bd_net  \
  [get_bd_pins /proc_sys_reset_3/interconnect_aresetn] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/S00_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/M00_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/M01_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_M_AXI_GP0/ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/M00_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S02_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S00_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S01_ARESETN] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/ARESETN] \

connect_bd_net  \
  [get_bd_pins /proc_sys_reset_3/peripheral_aresetn] \
  [get_bd_pins /dm_0/axi_resetn] \
  [get_bd_pins /dm_0/mm2s_prmry_resetn_out_n] \
  [get_bd_pins /encrypt_1_if/s_axi_aresetn] \
  [get_bd_pins /encrypt_1_if/s_axis_bram_0_aresetn] \

connect_bd_net  \
  [get_bd_pins /processing_system7_0/FCLK_CLK0] \
  [get_bd_pins /encrypt_1_if/acc_aclk] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S00_ACLK] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S01_ACLK] \

connect_bd_net  \
  [get_bd_pins /proc_sys_reset_0/peripheral_aresetn] \
  [get_bd_pins /encrypt_1_if/acc_aresetn] \

connect_bd_net  \
  [get_bd_pins /sds_irq_const/dout] \
  [get_bd_pins /xlconcat_0/In0] \
  [get_bd_pins /xlconcat_0/In1] \
  [get_bd_pins /xlconcat_0/In2] \
  [get_bd_pins /xlconcat_0/In3] \
  [get_bd_pins /xlconcat_0/In4] \
  [get_bd_pins /xlconcat_0/In5] \
  [get_bd_pins /xlconcat_0/In6] \
  [get_bd_pins /xlconcat_0/In7] \
  [get_bd_pins /xlconcat_0/In8] \
  [get_bd_pins /xlconcat_0/In9] \
  [get_bd_pins /xlconcat_0/In10] \
  [get_bd_pins /xlconcat_0/In11] \
  [get_bd_pins /xlconcat_0/In12] \
  [get_bd_pins /xlconcat_0/In13] \
  [get_bd_pins /xlconcat_0/In14] \
  [get_bd_pins /xlconcat_0/In15] \

connect_bd_net  \
  [get_bd_pins /axcache_0xE/dout] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S02_AXI_arcache] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S00_AXI_arcache] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S00_AXI_awcache] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S01_AXI_arcache] \
  [get_bd_pins /axi_ic_processing_system7_0_S_AXI_ACP/S01_AXI_awcache] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1_if/ap_ctrl] \
  [get_bd_intf_pins /encrypt_1/ap_ctrl] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1/m_axi_ctx] \
  [get_bd_intf_pins /encrypt_1_if/AP_AXIMM_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1/m_axi_buf_r] \
  [get_bd_intf_pins /encrypt_1_if/AP_AXIMM_1] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1/k_PORTA] \
  [get_bd_intf_pins /encrypt_1_if/AP_BRAM_IARG_0_0] \

connect_bd_intf_net \
  [get_bd_intf_pins /processing_system7_0/M_AXI_GP0] \
  [get_bd_intf_pins /axi_ic_processing_system7_0_M_AXI_GP0/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_ic_processing_system7_0_S_AXI_ACP/M00_AXI] \
  [get_bd_intf_pins /processing_system7_0/S_AXI_ACP] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1_if/M_AXIMM_0] \
  [get_bd_intf_pins /axi_ic_processing_system7_0_S_AXI_ACP/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /encrypt_1_if/M_AXIMM_1] \
  [get_bd_intf_pins /axi_ic_processing_system7_0_S_AXI_ACP/S01_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_ic_processing_system7_0_M_AXI_GP0/M00_AXI] \
  [get_bd_intf_pins /encrypt_1_if/S_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /axi_ic_processing_system7_0_M_AXI_GP0/M01_AXI] \
  [get_bd_intf_pins /dm_0/S_AXI_LITE] \

connect_bd_intf_net \
  [get_bd_intf_pins /dm_0/M_AXI_MM2S] \
  [get_bd_intf_pins /axi_ic_processing_system7_0_S_AXI_ACP/S02_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins /dm_0/M_AXIS_MM2S] \
  [get_bd_intf_pins /encrypt_1_if/S_AXIS_BRAM_0] \

#---------------------------
# Automation Commands
#---------------------------
assign_bd_address

include_bd_addr_seg [get_bd_addr_segs -excluded -of_objects [get_bd_addr_segs -of_objects [get_bd_intf_pin -of_objects [get_bd_cells] -filter "Mode==Slave"]]]


#---------------------------
# Create Address Map file
#---------------------------
set xml_file address_map.xml
set fp [open ${xml_file} w]
set addr_segs [get_bd_addr_segs -hier]
puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
puts $fp "<xd:addressMap xmlns:xd=\"http://www.xilinx.com/xd\">"
foreach addr_seg $addr_segs {
  set path [get_property PATH $addr_seg]
  set offset [get_property OFFSET $addr_seg]
  if {$offset != ""} {
    set range [format 0x%X [get_property RANGE $addr_seg]]
    set high_addr [format 0x%X [expr $offset + $range - 1]]
    set slave [get_bd_addr_segs -of_object $addr_seg]
    regexp {([^/]+)/([^/]+)/([^/]+)$} $path match componentRef addressSpace segment
    regexp {([^/]+)/([^/]+)/([^/]+)$} $slave match slaveRef slaveMemoryMap slaveSegment  
    set slaveIntfPin [get_bd_intf_pins -of_objects $slave]
    regexp {([^/]+)$} $slaveIntfPin match slaveInterface
    puts $fp "  <xd:addressRange xd:componentRef=\"${componentRef}\" xd:addressSpace=\"${addressSpace}\" xd:segment=\"${segment}\" xd:slaveRef=\"${slaveRef}\" xd:slaveInterface=\"${slaveInterface}\" xd:slaveSegment=\"${slaveSegment}\" xd:baseAddr=\"${offset}\" xd:range=\"${range}\"/>"
  }
}
puts $fp "</xd:addressMap>"

close $fp
