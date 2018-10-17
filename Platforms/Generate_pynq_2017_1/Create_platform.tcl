set pfm [sdsoc::create_pfm pynq_2017_1.hpfm]
sdsoc::pfm_name $pfm "upenn.edu" "hls_tuner" "pynq" "1.0"
sdsoc::pfm_description $pfm "Pynq Board"
sdsoc::pfm_clock $pfm FCLK_CLK0 processing_system7_0 0 false proc_sys_reset_0
sdsoc::pfm_clock $pfm FCLK_CLK1 processing_system7_0 1 true  proc_sys_reset_1
sdsoc::pfm_clock $pfm FCLK_CLK2 processing_system7_0 2 false proc_sys_reset_2
sdsoc::pfm_clock $pfm FCLK_CLK3 processing_system7_0 3 false proc_sys_reset_3
sdsoc::pfm_axi_port $pfm M_AXI_GP0 processing_system7_0 M_AXI_GP
sdsoc::pfm_axi_port $pfm M_AXI_GP1 processing_system7_0 M_AXI_GP
sdsoc::pfm_axi_port $pfm S_AXI_ACP processing_system7_0 S_AXI_ACP
sdsoc::pfm_axi_port $pfm S_AXI_HP0 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port $pfm S_AXI_HP1 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port $pfm S_AXI_HP2 processing_system7_0 S_AXI_HP
sdsoc::pfm_axi_port $pfm S_AXI_HP3 processing_system7_0 S_AXI_HP
for {set i 0} {$i < 16} {incr i} {
  sdsoc::pfm_irq $pfm In$i xlconcat_0
}
sdsoc::generate_hw_pfm $pfm

