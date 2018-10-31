-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Tue Oct 30 17:08:37 2018
-- Host        : icgrid48 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/local/tmp.HG4IAH4zV1/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_axcache_0xE_0/pynq_axcache_0xE_0_sim_netlist.vhdl
-- Design      : pynq_axcache_0xE_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_axcache_0xE_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pynq_axcache_0xE_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pynq_axcache_0xE_0 : entity is "pynq_axcache_0xE_0,xlconstant_v1_1_3_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_axcache_0xE_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pynq_axcache_0xE_0 : entity is "xlconstant_v1_1_3_xlconstant,Vivado 2017.1_sdx";
end pynq_axcache_0xE_0;

architecture STRUCTURE of pynq_axcache_0xE_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  dout(3) <= \<const1>\;
  dout(2) <= \<const1>\;
  dout(1) <= \<const1>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
