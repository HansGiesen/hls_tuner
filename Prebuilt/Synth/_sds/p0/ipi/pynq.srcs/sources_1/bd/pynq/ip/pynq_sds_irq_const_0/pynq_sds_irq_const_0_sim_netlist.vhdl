-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Mon Nov 19 14:25:53 2018
-- Host        : icgrid48 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/local/tmp.tEdaivbEa4/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_sds_irq_const_0/pynq_sds_irq_const_0_sim_netlist.vhdl
-- Design      : pynq_sds_irq_const_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_sds_irq_const_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pynq_sds_irq_const_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pynq_sds_irq_const_0 : entity is "pynq_sds_irq_const_0,xlconstant_v1_1_3_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pynq_sds_irq_const_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pynq_sds_irq_const_0 : entity is "xlconstant_v1_1_3_xlconstant,Vivado 2017.1_sdx";
end pynq_sds_irq_const_0;

architecture STRUCTURE of pynq_sds_irq_const_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
