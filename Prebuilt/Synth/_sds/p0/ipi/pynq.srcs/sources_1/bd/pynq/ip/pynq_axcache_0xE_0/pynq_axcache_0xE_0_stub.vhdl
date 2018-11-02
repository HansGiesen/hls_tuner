-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Wed Oct 31 14:53:28 2018
-- Host        : icgrid46 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/local/tmp.MCX0lb37KH/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_axcache_0xE_0/pynq_axcache_0xE_0_stub.vhdl
-- Design      : pynq_axcache_0xE_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pynq_axcache_0xE_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end pynq_axcache_0xE_0;

architecture stub of pynq_axcache_0xE_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.1_sdx";
begin
end;
