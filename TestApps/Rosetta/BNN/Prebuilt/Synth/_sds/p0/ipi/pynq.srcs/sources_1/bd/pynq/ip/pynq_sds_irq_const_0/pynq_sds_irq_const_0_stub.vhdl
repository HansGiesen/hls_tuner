-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Fri Jan  4 16:29:56 2019
-- Host        : icgrid62 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode synth_stub
--               /var/tmp/tmp.ad3h9wxxaq/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_sds_irq_const_0/pynq_sds_irq_const_0_stub.vhdl
-- Design      : pynq_sds_irq_const_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pynq_sds_irq_const_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end pynq_sds_irq_const_0;

architecture stub of pynq_sds_irq_const_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.1_sdx";
begin
end;
