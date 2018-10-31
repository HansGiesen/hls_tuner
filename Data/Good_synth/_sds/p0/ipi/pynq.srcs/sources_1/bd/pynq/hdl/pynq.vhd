--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
--Date        : Tue Oct 30 16:33:18 2018
--Host        : icgrid44 running 64-bit openSUSE Leap 42.3
--Command     : generate_target pynq.bd
--Design      : pynq
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1COBY2N is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1COBY2N;

architecture STRUCTURE of m00_couplers_imp_1COBY2N is
  component pynq_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_m00_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_regslice_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_regslice_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_regslice_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_regslice_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_regslice_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_regslice_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_regslice_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_regslice_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_regslice_WREADY;
  m00_couplers_to_m00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_regslice_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_regslice_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_regslice_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_regslice_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_regslice_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
m00_regslice: component pynq_m00_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_regslice_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => m00_regslice_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_regslice_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => m00_regslice_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m00_regslice_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m00_regslice_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m00_regslice_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_m00_regslice_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arready => m00_couplers_to_m00_regslice_ARREADY,
      s_axi_arvalid => m00_couplers_to_m00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_m00_regslice_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awready => m00_couplers_to_m00_regslice_AWREADY,
      s_axi_awvalid => m00_couplers_to_m00_regslice_AWVALID,
      s_axi_bready => m00_couplers_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_m00_regslice_RDATA(31 downto 0),
      s_axi_rready => m00_couplers_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_m00_regslice_WDATA(31 downto 0),
      s_axi_wready => m00_couplers_to_m00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_m00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1G812EK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1G812EK;

architecture STRUCTURE of m00_couplers_imp_1G812EK is
  component pynq_m00_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_m00_data_fifo_0;
  component pynq_m00_regslice_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_m00_regslice_1;
  component pynq_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_ds_0;
  component pynq_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_pc_1;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m00_regslice_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m00_regslice_WVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_ds_ARVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_auto_ds_AWVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_BREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_BVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_data_fifo_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_RLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_RREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_auto_ds_RVALID : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal m00_data_fifo_to_auto_ds_WLAST : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_WREADY : STD_LOGIC;
  signal m00_data_fifo_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_data_fifo_to_auto_ds_WVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_regslice_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_regslice_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_regslice_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_regslice_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= m00_regslice_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_regslice_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_regslice_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= m00_regslice_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= m00_regslice_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_regslice_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m00_regslice_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_regslice_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_regslice_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_regslice_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_regslice_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_regslice_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= m00_regslice_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= m00_regslice_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_regslice_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m00_regslice_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_regslice_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_regslice_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_regslice_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_regslice_to_m00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= m00_regslice_to_m00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= m00_regslice_to_m00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= m00_regslice_to_m00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= m00_regslice_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_m00_data_fifo_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_data_fifo_AWREADY;
  S_AXI_bid(1 downto 0) <= m00_couplers_to_m00_data_fifo_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_data_fifo_BVALID;
  S_AXI_rdata(1023 downto 0) <= m00_couplers_to_m00_data_fifo_RDATA(1023 downto 0);
  S_AXI_rid(1 downto 0) <= m00_couplers_to_m00_data_fifo_RID(1 downto 0);
  S_AXI_rlast <= m00_couplers_to_m00_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_data_fifo_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_data_fifo_WREADY;
  m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_data_fifo_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_data_fifo_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_data_fifo_WDATA(1023 downto 0) <= S_AXI_wdata(1023 downto 0);
  m00_couplers_to_m00_data_fifo_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_data_fifo_WSTRB(127 downto 0) <= S_AXI_wstrb(127 downto 0);
  m00_couplers_to_m00_data_fifo_WVALID <= S_AXI_wvalid;
  m00_regslice_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_regslice_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_regslice_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_regslice_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_regslice_to_m00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  m00_regslice_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_regslice_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_regslice_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_regslice_to_m00_couplers_WREADY <= M_AXI_wready;
auto_ds: component pynq_auto_ds_0
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(63 downto 0) => auto_ds_to_auto_pc_RDATA(63 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(63 downto 0) => auto_ds_to_auto_pc_WDATA(63 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(7 downto 0) => auto_ds_to_auto_pc_WSTRB(7 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m00_data_fifo_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_data_fifo_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_data_fifo_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m00_data_fifo_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m00_data_fifo_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_data_fifo_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_data_fifo_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_data_fifo_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m00_data_fifo_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m00_data_fifo_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_data_fifo_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_data_fifo_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_data_fifo_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_data_fifo_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_data_fifo_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m00_data_fifo_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m00_data_fifo_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_data_fifo_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_data_fifo_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_data_fifo_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m00_data_fifo_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m00_data_fifo_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_data_fifo_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_data_fifo_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m00_data_fifo_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m00_data_fifo_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m00_data_fifo_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m00_data_fifo_to_auto_ds_BVALID,
      s_axi_rdata(1023 downto 0) => m00_data_fifo_to_auto_ds_RDATA(1023 downto 0),
      s_axi_rid(1 downto 0) => m00_data_fifo_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m00_data_fifo_to_auto_ds_RLAST,
      s_axi_rready => m00_data_fifo_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m00_data_fifo_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m00_data_fifo_to_auto_ds_RVALID,
      s_axi_wdata(1023 downto 0) => m00_data_fifo_to_auto_ds_WDATA(1023 downto 0),
      s_axi_wlast => m00_data_fifo_to_auto_ds_WLAST,
      s_axi_wready => m00_data_fifo_to_auto_ds_WREADY,
      s_axi_wstrb(127 downto 0) => m00_data_fifo_to_auto_ds_WSTRB(127 downto 0),
      s_axi_wvalid => m00_data_fifo_to_auto_ds_WVALID
    );
auto_pc: component pynq_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      m_axi_bready => auto_pc_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      m_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      m_axi_rready => auto_pc_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      m_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      m_axi_wready => auto_pc_to_m00_regslice_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m00_regslice_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => auto_ds_to_auto_pc_RDATA(63 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => auto_ds_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => auto_ds_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
m00_data_fifo: component pynq_m00_data_fifo_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_data_fifo_to_auto_ds_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_data_fifo_to_auto_ds_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m00_data_fifo_to_auto_ds_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => m00_data_fifo_to_auto_ds_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => m00_data_fifo_to_auto_ds_ARLEN(7 downto 0),
      m_axi_arlock(0) => m00_data_fifo_to_auto_ds_ARLOCK(0),
      m_axi_arprot(2 downto 0) => m00_data_fifo_to_auto_ds_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m00_data_fifo_to_auto_ds_ARQOS(3 downto 0),
      m_axi_arready => m00_data_fifo_to_auto_ds_ARREADY,
      m_axi_arregion(3 downto 0) => m00_data_fifo_to_auto_ds_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => m00_data_fifo_to_auto_ds_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_data_fifo_to_auto_ds_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_data_fifo_to_auto_ds_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_data_fifo_to_auto_ds_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_data_fifo_to_auto_ds_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => m00_data_fifo_to_auto_ds_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => m00_data_fifo_to_auto_ds_AWLEN(7 downto 0),
      m_axi_awlock(0) => m00_data_fifo_to_auto_ds_AWLOCK(0),
      m_axi_awprot(2 downto 0) => m00_data_fifo_to_auto_ds_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_data_fifo_to_auto_ds_AWQOS(3 downto 0),
      m_axi_awready => m00_data_fifo_to_auto_ds_AWREADY,
      m_axi_awregion(3 downto 0) => m00_data_fifo_to_auto_ds_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => m00_data_fifo_to_auto_ds_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_data_fifo_to_auto_ds_AWVALID,
      m_axi_bid(1 downto 0) => m00_data_fifo_to_auto_ds_BID(1 downto 0),
      m_axi_bready => m00_data_fifo_to_auto_ds_BREADY,
      m_axi_bresp(1 downto 0) => m00_data_fifo_to_auto_ds_BRESP(1 downto 0),
      m_axi_bvalid => m00_data_fifo_to_auto_ds_BVALID,
      m_axi_rdata(1023 downto 0) => m00_data_fifo_to_auto_ds_RDATA(1023 downto 0),
      m_axi_rid(1 downto 0) => m00_data_fifo_to_auto_ds_RID(1 downto 0),
      m_axi_rlast => m00_data_fifo_to_auto_ds_RLAST,
      m_axi_rready => m00_data_fifo_to_auto_ds_RREADY,
      m_axi_rresp(1 downto 0) => m00_data_fifo_to_auto_ds_RRESP(1 downto 0),
      m_axi_rvalid => m00_data_fifo_to_auto_ds_RVALID,
      m_axi_wdata(1023 downto 0) => m00_data_fifo_to_auto_ds_WDATA(1023 downto 0),
      m_axi_wlast => m00_data_fifo_to_auto_ds_WLAST,
      m_axi_wready => m00_data_fifo_to_auto_ds_WREADY,
      m_axi_wstrb(127 downto 0) => m00_data_fifo_to_auto_ds_WSTRB(127 downto 0),
      m_axi_wvalid => m00_data_fifo_to_auto_ds_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => m00_couplers_to_m00_data_fifo_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_m00_data_fifo_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_m00_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_m00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m00_couplers_to_m00_data_fifo_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_m00_data_fifo_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_m00_data_fifo_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_m00_data_fifo_AWVALID,
      s_axi_bid(1 downto 0) => m00_couplers_to_m00_data_fifo_BID(1 downto 0),
      s_axi_bready => m00_couplers_to_m00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_data_fifo_BVALID,
      s_axi_rdata(1023 downto 0) => m00_couplers_to_m00_data_fifo_RDATA(1023 downto 0),
      s_axi_rid(1 downto 0) => m00_couplers_to_m00_data_fifo_RID(1 downto 0),
      s_axi_rlast => m00_couplers_to_m00_data_fifo_RLAST,
      s_axi_rready => m00_couplers_to_m00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_data_fifo_RVALID,
      s_axi_wdata(1023 downto 0) => m00_couplers_to_m00_data_fifo_WDATA(1023 downto 0),
      s_axi_wlast => m00_couplers_to_m00_data_fifo_WLAST,
      s_axi_wready => m00_couplers_to_m00_data_fifo_WREADY,
      s_axi_wstrb(127 downto 0) => m00_couplers_to_m00_data_fifo_WSTRB(127 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_data_fifo_WVALID
    );
m00_regslice: component pynq_m00_regslice_1
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_regslice_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_regslice_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => m00_regslice_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => m00_regslice_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => m00_regslice_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => m00_regslice_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => m00_regslice_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => m00_regslice_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => m00_regslice_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_regslice_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_regslice_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_regslice_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => m00_regslice_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => m00_regslice_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => m00_regslice_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => m00_regslice_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => m00_regslice_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => m00_regslice_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => m00_regslice_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_regslice_to_m00_couplers_AWVALID,
      m_axi_bready => m00_regslice_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_regslice_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_regslice_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => m00_regslice_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rlast => m00_regslice_to_m00_couplers_RLAST,
      m_axi_rready => m00_regslice_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_regslice_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_regslice_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => m00_regslice_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast => m00_regslice_to_m00_couplers_WLAST,
      m_axi_wready => m00_regslice_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => m00_regslice_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => m00_regslice_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_pc_to_m00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_m00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_m00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(3 downto 0) => auto_pc_to_m00_regslice_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => auto_pc_to_m00_regslice_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_m00_regslice_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_m00_regslice_ARREADY,
      s_axi_arsize(2 downto 0) => auto_pc_to_m00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_m00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_m00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_m00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_m00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(3 downto 0) => auto_pc_to_m00_regslice_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => auto_pc_to_m00_regslice_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_m00_regslice_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_m00_regslice_AWREADY,
      s_axi_awsize(2 downto 0) => auto_pc_to_m00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_m00_regslice_AWVALID,
      s_axi_bready => auto_pc_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_m00_regslice_BVALID,
      s_axi_rdata(63 downto 0) => auto_pc_to_m00_regslice_RDATA(63 downto 0),
      s_axi_rlast => auto_pc_to_m00_regslice_RLAST,
      s_axi_rready => auto_pc_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_m00_regslice_RVALID,
      s_axi_wdata(63 downto 0) => auto_pc_to_m00_regslice_WDATA(63 downto 0),
      s_axi_wlast => auto_pc_to_m00_regslice_WLAST,
      s_axi_wready => auto_pc_to_m00_regslice_WREADY,
      s_axi_wstrb(7 downto 0) => auto_pc_to_m00_regslice_WSTRB(7 downto 0),
      s_axi_wvalid => auto_pc_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_DZ8YMH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_DZ8YMH;

architecture STRUCTURE of m01_couplers_imp_DZ8YMH is
  component pynq_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_m01_regslice_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_regslice_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_regslice_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_regslice_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_regslice_WVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_regslice_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_regslice_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_regslice_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_regslice_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_WVALID : STD_LOGIC;
  signal NLW_m01_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(9 downto 0) <= m01_regslice_to_m01_couplers_ARADDR(9 downto 0);
  M_AXI_arvalid <= m01_regslice_to_m01_couplers_ARVALID;
  M_AXI_awaddr(9 downto 0) <= m01_regslice_to_m01_couplers_AWADDR(9 downto 0);
  M_AXI_awvalid <= m01_regslice_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_regslice_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_regslice_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_regslice_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m01_regslice_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_regslice_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_regslice_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_regslice_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_regslice_WREADY;
  m01_couplers_to_m01_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_regslice_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_regslice_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_regslice_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_regslice_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_regslice_WVALID <= S_AXI_wvalid;
  m01_regslice_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_regslice_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_regslice_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_regslice_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_regslice_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_regslice_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_regslice_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_regslice_to_m01_couplers_WREADY <= M_AXI_wready;
m01_regslice: component pynq_m01_regslice_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(9 downto 0) => m01_regslice_to_m01_couplers_ARADDR(9 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m01_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => m01_regslice_to_m01_couplers_ARREADY,
      m_axi_arvalid => m01_regslice_to_m01_couplers_ARVALID,
      m_axi_awaddr(9 downto 0) => m01_regslice_to_m01_couplers_AWADDR(9 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m01_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => m01_regslice_to_m01_couplers_AWREADY,
      m_axi_awvalid => m01_regslice_to_m01_couplers_AWVALID,
      m_axi_bready => m01_regslice_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m01_regslice_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m01_regslice_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m01_regslice_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => m01_regslice_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m01_regslice_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m01_regslice_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m01_regslice_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => m01_regslice_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_m01_regslice_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => m01_regslice_to_m01_couplers_WVALID,
      s_axi_araddr(9 downto 0) => m01_couplers_to_m01_regslice_ARADDR(9 downto 0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => m01_couplers_to_m01_regslice_ARREADY,
      s_axi_arvalid => m01_couplers_to_m01_regslice_ARVALID,
      s_axi_awaddr(9 downto 0) => m01_couplers_to_m01_regslice_AWADDR(9 downto 0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => m01_couplers_to_m01_regslice_AWREADY,
      s_axi_awvalid => m01_couplers_to_m01_regslice_AWVALID,
      s_axi_bready => m01_couplers_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => m01_couplers_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => m01_couplers_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_TCRB4A is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_TCRB4A;

architecture STRUCTURE of s00_couplers_imp_TCRB4A is
  component pynq_s00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s00_regslice_0;
  component pynq_s00_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s00_data_fifo_0;
  component pynq_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_pc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_data_fifo_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_data_fifo_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_data_fifo_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_data_fifo_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_data_fifo_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_data_fifo_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_data_fifo_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_regslice_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_data_fifo_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_data_fifo_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_data_fifo_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_data_fifo_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_data_fifo_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_data_fifo_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_data_fifo_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_s00_regslice_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_regslice_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_s00_regslice_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_regslice_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
  s00_data_fifo_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_data_fifo_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_data_fifo_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_data_fifo_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_data_fifo_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_data_fifo_to_s00_couplers_WREADY <= M_AXI_wready;
auto_pc: component pynq_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_data_fifo_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_data_fifo_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_data_fifo_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_data_fifo_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_data_fifo_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_data_fifo_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_data_fifo_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_data_fifo_AWVALID,
      m_axi_bready => auto_pc_to_s00_data_fifo_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_data_fifo_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_data_fifo_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_data_fifo_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_data_fifo_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_data_fifo_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_data_fifo_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_data_fifo_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_data_fifo_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_data_fifo_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_data_fifo_WVALID,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_regslice_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_regslice_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_regslice_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_regslice_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_regslice_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      s_axi_rready => s00_regslice_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_regslice_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      s_axi_wready => s00_regslice_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_pc_WVALID
    );
s00_data_fifo: component pynq_s00_data_fifo_0
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => s00_data_fifo_to_s00_couplers_ARREADY,
      m_axi_arvalid => s00_data_fifo_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => s00_data_fifo_to_s00_couplers_AWREADY,
      m_axi_awvalid => s00_data_fifo_to_s00_couplers_AWVALID,
      m_axi_bready => s00_data_fifo_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s00_data_fifo_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s00_data_fifo_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => s00_data_fifo_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => s00_data_fifo_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s00_data_fifo_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s00_data_fifo_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => s00_data_fifo_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => s00_data_fifo_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => s00_data_fifo_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => s00_data_fifo_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_pc_to_s00_data_fifo_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => auto_pc_to_s00_data_fifo_ARPROT(2 downto 0),
      s_axi_arready => auto_pc_to_s00_data_fifo_ARREADY,
      s_axi_arvalid => auto_pc_to_s00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_s00_data_fifo_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => auto_pc_to_s00_data_fifo_AWPROT(2 downto 0),
      s_axi_awready => auto_pc_to_s00_data_fifo_AWREADY,
      s_axi_awvalid => auto_pc_to_s00_data_fifo_AWVALID,
      s_axi_bready => auto_pc_to_s00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_s00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_s00_data_fifo_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_s00_data_fifo_RDATA(31 downto 0),
      s_axi_rready => auto_pc_to_s00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_s00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_s00_data_fifo_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_s00_data_fifo_WDATA(31 downto 0),
      s_axi_wready => auto_pc_to_s00_data_fifo_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_s00_data_fifo_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_s00_data_fifo_WVALID
    );
s00_regslice: component pynq_s00_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => s00_regslice_to_auto_pc_ARID(11 downto 0),
      m_axi_arlen(3 downto 0) => s00_regslice_to_auto_pc_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => s00_regslice_to_auto_pc_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_pc_ARREADY,
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => s00_regslice_to_auto_pc_AWID(11 downto 0),
      m_axi_awlen(3 downto 0) => s00_regslice_to_auto_pc_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => s00_regslice_to_auto_pc_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_pc_AWREADY,
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_pc_AWVALID,
      m_axi_bid(11 downto 0) => s00_regslice_to_auto_pc_BID(11 downto 0),
      m_axi_bready => s00_regslice_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => s00_regslice_to_auto_pc_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => s00_regslice_to_auto_pc_RID(11 downto 0),
      m_axi_rlast => s00_regslice_to_auto_pc_RLAST,
      m_axi_rready => s00_regslice_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => s00_regslice_to_auto_pc_WDATA(31 downto 0),
      m_axi_wid(11 downto 0) => s00_regslice_to_auto_pc_WID(11 downto 0),
      m_axi_wlast => s00_regslice_to_auto_pc_WLAST,
      m_axi_wready => s00_regslice_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => s00_regslice_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_pc_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_s00_regslice_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_s00_regslice_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_s00_regslice_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_s00_regslice_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_s00_regslice_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_s00_regslice_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_s00_regslice_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_s00_regslice_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_s00_regslice_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_s00_regslice_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_s00_regslice_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_s00_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_Y0CP5L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_Y0CP5L;

architecture STRUCTURE of s00_couplers_imp_Y0CP5L is
  component pynq_s00_regslice_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s00_regslice_1;
  component pynq_s00_data_fifo_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s00_data_fifo_1;
  component pynq_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_data_fifo_ARVALID : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_s00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s00_data_fifo_AWVALID : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_BREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_data_fifo_BVALID : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal auto_cc_to_s00_data_fifo_RLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_RREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s00_data_fifo_RVALID : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal auto_cc_to_s00_data_fifo_WLAST : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_WREADY : STD_LOGIC;
  signal auto_cc_to_s00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_cc_to_s00_data_fifo_WVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_regslice_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_couplers_to_s00_regslice_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_regslice_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_couplers_to_s00_regslice_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_regslice_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_s00_regslice_WVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_data_fifo_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_data_fifo_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_data_fifo_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_data_fifo_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_data_fifo_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_data_fifo_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_cc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_cc_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_cc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_regslice_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_cc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_cc_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_cc_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_cc_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_regslice_to_auto_cc_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_cc_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_cc_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_regslice_to_auto_cc_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_cc_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_regslice_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_s00_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_data_fifo_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_data_fifo_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_data_fifo_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s00_data_fifo_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s00_data_fifo_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_data_fifo_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= s00_data_fifo_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s00_data_fifo_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s00_data_fifo_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s00_data_fifo_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s00_data_fifo_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s00_data_fifo_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s00_data_fifo_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= s00_data_fifo_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_data_fifo_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_data_fifo_to_s00_couplers_RREADY;
  M_AXI_wdata(1023 downto 0) <= s00_data_fifo_to_s00_couplers_WDATA(1023 downto 0);
  M_AXI_wlast <= s00_data_fifo_to_s00_couplers_WLAST;
  M_AXI_wstrb(127 downto 0) <= s00_data_fifo_to_s00_couplers_WSTRB(127 downto 0);
  M_AXI_wvalid <= s00_data_fifo_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_s00_regslice_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_regslice_BVALID;
  S_AXI_rdata(1023 downto 0) <= s00_couplers_to_s00_regslice_RDATA(1023 downto 0);
  S_AXI_rlast <= s00_couplers_to_s00_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_regslice_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_regslice_WREADY;
  s00_couplers_to_s00_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_regslice_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_s00_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_s00_regslice_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s00_couplers_to_s00_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_regslice_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_s00_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_s00_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_s00_regslice_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_s00_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_s00_regslice_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s00_couplers_to_s00_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_s00_regslice_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_regslice_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_regslice_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_regslice_WDATA(1023 downto 0) <= S_AXI_wdata(1023 downto 0);
  s00_couplers_to_s00_regslice_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_regslice_WSTRB(127 downto 0) <= S_AXI_wstrb(127 downto 0);
  s00_couplers_to_s00_regslice_WVALID <= S_AXI_wvalid;
  s00_data_fifo_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_data_fifo_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_data_fifo_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_data_fifo_to_s00_couplers_RDATA(1023 downto 0) <= M_AXI_rdata(1023 downto 0);
  s00_data_fifo_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_data_fifo_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_data_fifo_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_data_fifo_to_s00_couplers_WREADY <= M_AXI_wready;
auto_cc: component pynq_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_s00_data_fifo_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s00_data_fifo_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s00_data_fifo_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arlen(7 downto 0) => auto_cc_to_s00_data_fifo_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s00_data_fifo_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_cc_to_s00_data_fifo_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s00_data_fifo_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s00_data_fifo_ARREADY,
      m_axi_arregion(3 downto 0) => auto_cc_to_s00_data_fifo_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s00_data_fifo_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_cc_to_s00_data_fifo_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_s00_data_fifo_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_s00_data_fifo_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_s00_data_fifo_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_s00_data_fifo_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_s00_data_fifo_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_cc_to_s00_data_fifo_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_s00_data_fifo_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_s00_data_fifo_AWREADY,
      m_axi_awregion(3 downto 0) => auto_cc_to_s00_data_fifo_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_s00_data_fifo_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_cc_to_s00_data_fifo_AWVALID,
      m_axi_bready => auto_cc_to_s00_data_fifo_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_s00_data_fifo_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_s00_data_fifo_BVALID,
      m_axi_rdata(1023 downto 0) => auto_cc_to_s00_data_fifo_RDATA(1023 downto 0),
      m_axi_rlast => auto_cc_to_s00_data_fifo_RLAST,
      m_axi_rready => auto_cc_to_s00_data_fifo_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s00_data_fifo_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s00_data_fifo_RVALID,
      m_axi_wdata(1023 downto 0) => auto_cc_to_s00_data_fifo_WDATA(1023 downto 0),
      m_axi_wlast => auto_cc_to_s00_data_fifo_WLAST,
      m_axi_wready => auto_cc_to_s00_data_fifo_WREADY,
      m_axi_wstrb(127 downto 0) => auto_cc_to_s00_data_fifo_WSTRB(127 downto 0),
      m_axi_wvalid => auto_cc_to_s00_data_fifo_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_cc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s00_regslice_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_regslice_to_auto_cc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => s00_regslice_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_cc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_cc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_cc_AWVALID,
      s_axi_bready => s00_regslice_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_cc_BVALID,
      s_axi_rdata(1023 downto 0) => s00_regslice_to_auto_cc_RDATA(1023 downto 0),
      s_axi_rlast => s00_regslice_to_auto_cc_RLAST,
      s_axi_rready => s00_regslice_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_cc_RVALID,
      s_axi_wdata(1023 downto 0) => s00_regslice_to_auto_cc_WDATA(1023 downto 0),
      s_axi_wlast => s00_regslice_to_auto_cc_WLAST,
      s_axi_wready => s00_regslice_to_auto_cc_WREADY,
      s_axi_wstrb(127 downto 0) => s00_regslice_to_auto_cc_WSTRB(127 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_cc_WVALID
    );
s00_data_fifo: component pynq_s00_data_fifo_1
     port map (
      aclk => M_ACLK_1,
      aresetn => M_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_data_fifo_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_data_fifo_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_data_fifo_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_data_fifo_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_data_fifo_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_data_fifo_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_data_fifo_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => s00_data_fifo_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_s00_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_data_fifo_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_data_fifo_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_data_fifo_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_data_fifo_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_data_fifo_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_data_fifo_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_data_fifo_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_data_fifo_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_data_fifo_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => s00_data_fifo_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_s00_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_data_fifo_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_data_fifo_to_s00_couplers_AWVALID,
      m_axi_bready => s00_data_fifo_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => s00_data_fifo_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => s00_data_fifo_to_s00_couplers_BVALID,
      m_axi_rdata(1023 downto 0) => s00_data_fifo_to_s00_couplers_RDATA(1023 downto 0),
      m_axi_rlast => s00_data_fifo_to_s00_couplers_RLAST,
      m_axi_rready => s00_data_fifo_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => s00_data_fifo_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => s00_data_fifo_to_s00_couplers_RVALID,
      m_axi_wdata(1023 downto 0) => s00_data_fifo_to_s00_couplers_WDATA(1023 downto 0),
      m_axi_wlast => s00_data_fifo_to_s00_couplers_WLAST,
      m_axi_wready => s00_data_fifo_to_s00_couplers_WREADY,
      m_axi_wstrb(127 downto 0) => s00_data_fifo_to_s00_couplers_WSTRB(127 downto 0),
      m_axi_wvalid => s00_data_fifo_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_cc_to_s00_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_cc_to_s00_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_cc_to_s00_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_cc_to_s00_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_cc_to_s00_data_fifo_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_cc_to_s00_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_cc_to_s00_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => auto_cc_to_s00_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => auto_cc_to_s00_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_cc_to_s00_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_cc_to_s00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_cc_to_s00_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_cc_to_s00_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_cc_to_s00_data_fifo_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_cc_to_s00_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_cc_to_s00_data_fifo_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_cc_to_s00_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_cc_to_s00_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => auto_cc_to_s00_data_fifo_AWREADY,
      s_axi_awregion(3 downto 0) => auto_cc_to_s00_data_fifo_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_cc_to_s00_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_cc_to_s00_data_fifo_AWVALID,
      s_axi_bready => auto_cc_to_s00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_s00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_s00_data_fifo_BVALID,
      s_axi_rdata(1023 downto 0) => auto_cc_to_s00_data_fifo_RDATA(1023 downto 0),
      s_axi_rlast => auto_cc_to_s00_data_fifo_RLAST,
      s_axi_rready => auto_cc_to_s00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_s00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_s00_data_fifo_RVALID,
      s_axi_wdata(1023 downto 0) => auto_cc_to_s00_data_fifo_WDATA(1023 downto 0),
      s_axi_wlast => auto_cc_to_s00_data_fifo_WLAST,
      s_axi_wready => auto_cc_to_s00_data_fifo_WREADY,
      s_axi_wstrb(127 downto 0) => auto_cc_to_s00_data_fifo_WSTRB(127 downto 0),
      s_axi_wvalid => auto_cc_to_s00_data_fifo_WVALID
    );
s00_regslice: component pynq_s00_regslice_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_cc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_cc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_cc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_auto_cc_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_auto_cc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_cc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_cc_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_cc_ARREADY,
      m_axi_arregion(3 downto 0) => s00_regslice_to_auto_cc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_cc_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_cc_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_cc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_cc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_cc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_cc_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_cc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_cc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_cc_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_cc_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_cc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_cc_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_cc_AWVALID,
      m_axi_bready => s00_regslice_to_auto_cc_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_cc_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_cc_BVALID,
      m_axi_rdata(1023 downto 0) => s00_regslice_to_auto_cc_RDATA(1023 downto 0),
      m_axi_rlast => s00_regslice_to_auto_cc_RLAST,
      m_axi_rready => s00_regslice_to_auto_cc_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_cc_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_cc_RVALID,
      m_axi_wdata(1023 downto 0) => s00_regslice_to_auto_cc_WDATA(1023 downto 0),
      m_axi_wlast => s00_regslice_to_auto_cc_WLAST,
      m_axi_wready => s00_regslice_to_auto_cc_WREADY,
      m_axi_wstrb(127 downto 0) => s00_regslice_to_auto_cc_WSTRB(127 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_cc_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_s00_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_s00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_s00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_s00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_s00_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_s00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_s00_regslice_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_s00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => s00_couplers_to_s00_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_s00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_s00_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_s00_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_s00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_s00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_s00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_s00_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_s00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_s00_regslice_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_s00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => s00_couplers_to_s00_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_s00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_s00_regslice_AWVALID,
      s_axi_bready => s00_couplers_to_s00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_s00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_s00_regslice_BVALID,
      s_axi_rdata(1023 downto 0) => s00_couplers_to_s00_regslice_RDATA(1023 downto 0),
      s_axi_rlast => s00_couplers_to_s00_regslice_RLAST,
      s_axi_rready => s00_couplers_to_s00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_s00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_s00_regslice_RVALID,
      s_axi_wdata(1023 downto 0) => s00_couplers_to_s00_regslice_WDATA(1023 downto 0),
      s_axi_wlast => s00_couplers_to_s00_regslice_WLAST,
      s_axi_wready => s00_couplers_to_s00_regslice_WREADY,
      s_axi_wstrb(127 downto 0) => s00_couplers_to_s00_regslice_WSTRB(127 downto 0),
      s_axi_wvalid => s00_couplers_to_s00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1S9J0OF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1S9J0OF;

architecture STRUCTURE of s01_couplers_imp_1S9J0OF is
  component pynq_s01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s01_regslice_0;
  component pynq_auto_us_cc_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_us_cc_df_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_cc_df_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_cc_df_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_AWVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_BREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_BVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_RVALID : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_WLAST : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WREADY : STD_LOGIC;
  signal auto_us_cc_df_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_cc_df_to_s01_couplers_WVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_regslice_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_regslice_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_regslice_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_regslice_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_regslice_WVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_regslice_to_auto_us_cc_df_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_regslice_to_auto_us_cc_df_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_BVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WVALID : STD_LOGIC;
  signal NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= auto_us_cc_df_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_cc_df_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_cc_df_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_cc_df_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_cc_df_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_cc_df_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_cc_df_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_cc_df_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_cc_df_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_cc_df_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_cc_df_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_cc_df_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_cc_df_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_cc_df_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_cc_df_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_cc_df_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_cc_df_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_cc_df_to_s01_couplers_AWVALID;
  M_AXI_bready <= auto_us_cc_df_to_s01_couplers_BREADY;
  M_AXI_rready <= auto_us_cc_df_to_s01_couplers_RREADY;
  M_AXI_wdata(1023 downto 0) <= auto_us_cc_df_to_s01_couplers_WDATA(1023 downto 0);
  M_AXI_wlast <= auto_us_cc_df_to_s01_couplers_WLAST;
  M_AXI_wstrb(127 downto 0) <= auto_us_cc_df_to_s01_couplers_WSTRB(127 downto 0);
  M_AXI_wvalid <= auto_us_cc_df_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_s01_regslice_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_regslice_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_regslice_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_regslice_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_regslice_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_s01_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_regslice_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_regslice_WREADY;
  auto_us_cc_df_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_cc_df_to_s01_couplers_AWREADY <= M_AXI_awready;
  auto_us_cc_df_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_cc_df_to_s01_couplers_BVALID <= M_AXI_bvalid;
  auto_us_cc_df_to_s01_couplers_RDATA(1023 downto 0) <= M_AXI_rdata(1023 downto 0);
  auto_us_cc_df_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_cc_df_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_cc_df_to_s01_couplers_RVALID <= M_AXI_rvalid;
  auto_us_cc_df_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_s01_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_s01_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_s01_regslice_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s01_couplers_to_s01_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_regslice_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_s01_regslice_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s01_couplers_to_s01_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_s01_regslice_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_regslice_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_regslice_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_regslice_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_regslice_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_regslice_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s01_couplers_to_s01_regslice_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_regslice_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_s01_regslice_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s01_couplers_to_s01_regslice_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_regslice_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_regslice_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_regslice_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_regslice_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_regslice_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_regslice_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_regslice_WVALID <= S_AXI_wvalid;
auto_us_cc_df: component pynq_auto_us_cc_df_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_us_cc_df_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_cc_df_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_cc_df_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arlen(7 downto 0) => auto_us_cc_df_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_cc_df_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_cc_df_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_cc_df_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_cc_df_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_cc_df_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_cc_df_to_s01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_cc_df_to_s01_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_cc_df_to_s01_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_cc_df_to_s01_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_cc_df_to_s01_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_cc_df_to_s01_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_cc_df_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_cc_df_to_s01_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_cc_df_to_s01_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_cc_df_to_s01_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_cc_df_to_s01_couplers_AWVALID,
      m_axi_bready => auto_us_cc_df_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_cc_df_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_cc_df_to_s01_couplers_BVALID,
      m_axi_rdata(1023 downto 0) => auto_us_cc_df_to_s01_couplers_RDATA(1023 downto 0),
      m_axi_rlast => auto_us_cc_df_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_cc_df_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_cc_df_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_cc_df_to_s01_couplers_RVALID,
      m_axi_wdata(1023 downto 0) => auto_us_cc_df_to_s01_couplers_WDATA(1023 downto 0),
      m_axi_wlast => auto_us_cc_df_to_s01_couplers_WLAST,
      m_axi_wready => auto_us_cc_df_to_s01_couplers_WREADY,
      m_axi_wstrb(127 downto 0) => auto_us_cc_df_to_s01_couplers_WSTRB(127 downto 0),
      m_axi_wvalid => auto_us_cc_df_to_s01_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      s_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      s_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      s_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      s_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      s_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      s_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      s_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      s_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      s_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      s_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      s_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      s_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      s_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      s_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      s_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      s_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      s_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID
    );
s01_regslice: component pynq_s01_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      m_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      m_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      m_axi_awaddr(31 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      m_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      m_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      m_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      m_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      m_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      m_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      m_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      m_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      m_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      m_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      m_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      m_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      m_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      m_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      m_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID,
      s_axi_araddr(31 downto 0) => s01_couplers_to_s01_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_s01_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_s01_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s01_couplers_to_s01_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_couplers_to_s01_regslice_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s01_couplers_to_s01_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_s01_regslice_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_s01_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => s01_couplers_to_s01_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s01_couplers_to_s01_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_s01_regslice_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_couplers_to_s01_regslice_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_s01_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_s01_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_couplers_to_s01_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_couplers_to_s01_regslice_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s01_couplers_to_s01_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_couplers_to_s01_regslice_AWQOS(3 downto 0),
      s_axi_awready => s01_couplers_to_s01_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => s01_couplers_to_s01_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s01_couplers_to_s01_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_s01_regslice_AWVALID,
      s_axi_bready => s01_couplers_to_s01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_s01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_s01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_s01_regslice_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_s01_regslice_RLAST,
      s_axi_rready => s01_couplers_to_s01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_s01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_s01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => s01_couplers_to_s01_regslice_WDATA(31 downto 0),
      s_axi_wlast => s01_couplers_to_s01_regslice_WLAST,
      s_axi_wready => s01_couplers_to_s01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => s01_couplers_to_s01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => s01_couplers_to_s01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_17A35YS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s02_couplers_imp_17A35YS;

architecture STRUCTURE of s02_couplers_imp_17A35YS is
  component pynq_s02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_s02_regslice_0;
  component pynq_auto_us_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pynq_auto_us_df_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_df_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_df_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_df_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_df_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_df_to_s02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_df_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_df_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_df_to_s02_couplers_ARREADY : STD_LOGIC;
  signal auto_us_df_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_df_to_s02_couplers_ARVALID : STD_LOGIC;
  signal auto_us_df_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal auto_us_df_to_s02_couplers_RLAST : STD_LOGIC;
  signal auto_us_df_to_s02_couplers_RREADY : STD_LOGIC;
  signal auto_us_df_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_df_to_s02_couplers_RVALID : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_regslice_ARREADY : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_regslice_ARVALID : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_s02_regslice_RLAST : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_RREADY : STD_LOGIC;
  signal s02_couplers_to_s02_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_regslice_RVALID : STD_LOGIC;
  signal s02_regslice_to_auto_us_df_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_regslice_to_auto_us_df_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_us_df_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_us_df_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_regslice_to_auto_us_df_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_regslice_to_auto_us_df_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_regslice_to_auto_us_df_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_us_df_ARREADY : STD_LOGIC;
  signal s02_regslice_to_auto_us_df_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_us_df_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_regslice_to_auto_us_df_ARVALID : STD_LOGIC;
  signal s02_regslice_to_auto_us_df_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_regslice_to_auto_us_df_RLAST : STD_LOGIC;
  signal s02_regslice_to_auto_us_df_RREADY : STD_LOGIC;
  signal s02_regslice_to_auto_us_df_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_us_df_RVALID : STD_LOGIC;
  signal NLW_auto_us_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= auto_us_df_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_df_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_df_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_df_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_df_to_s02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_df_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_df_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_df_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_df_to_s02_couplers_ARVALID;
  M_AXI_rready <= auto_us_df_to_s02_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s02_couplers_to_s02_regslice_ARREADY;
  S_AXI_rdata(63 downto 0) <= s02_couplers_to_s02_regslice_RDATA(63 downto 0);
  S_AXI_rlast <= s02_couplers_to_s02_regslice_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_regslice_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_s02_regslice_RVALID;
  auto_us_df_to_s02_couplers_ARREADY <= M_AXI_arready;
  auto_us_df_to_s02_couplers_RDATA(1023 downto 0) <= M_AXI_rdata(1023 downto 0);
  auto_us_df_to_s02_couplers_RLAST <= M_AXI_rlast;
  auto_us_df_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_df_to_s02_couplers_RVALID <= M_AXI_rvalid;
  s02_couplers_to_s02_regslice_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_regslice_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_regslice_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_regslice_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_regslice_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_regslice_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_regslice_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_s02_regslice_RREADY <= S_AXI_rready;
auto_us_df: component pynq_auto_us_df_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_df_to_s02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_df_to_s02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_df_to_s02_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_df_to_s02_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_df_to_s02_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_df_to_s02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_df_to_s02_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_df_to_s02_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_df_to_s02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_df_to_s02_couplers_ARVALID,
      m_axi_rdata(1023 downto 0) => auto_us_df_to_s02_couplers_RDATA(1023 downto 0),
      m_axi_rlast => auto_us_df_to_s02_couplers_RLAST,
      m_axi_rready => auto_us_df_to_s02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_df_to_s02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_df_to_s02_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s02_regslice_to_auto_us_df_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s02_regslice_to_auto_us_df_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_regslice_to_auto_us_df_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s02_regslice_to_auto_us_df_ARLEN(7 downto 0),
      s_axi_arlock(0) => s02_regslice_to_auto_us_df_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s02_regslice_to_auto_us_df_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s02_regslice_to_auto_us_df_ARQOS(3 downto 0),
      s_axi_arready => s02_regslice_to_auto_us_df_ARREADY,
      s_axi_arregion(3 downto 0) => s02_regslice_to_auto_us_df_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s02_regslice_to_auto_us_df_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_regslice_to_auto_us_df_ARVALID,
      s_axi_rdata(63 downto 0) => s02_regslice_to_auto_us_df_RDATA(63 downto 0),
      s_axi_rlast => s02_regslice_to_auto_us_df_RLAST,
      s_axi_rready => s02_regslice_to_auto_us_df_RREADY,
      s_axi_rresp(1 downto 0) => s02_regslice_to_auto_us_df_RRESP(1 downto 0),
      s_axi_rvalid => s02_regslice_to_auto_us_df_RVALID
    );
s02_regslice: component pynq_s02_regslice_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => s02_regslice_to_auto_us_df_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s02_regslice_to_auto_us_df_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s02_regslice_to_auto_us_df_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s02_regslice_to_auto_us_df_ARLEN(7 downto 0),
      m_axi_arlock(0) => s02_regslice_to_auto_us_df_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s02_regslice_to_auto_us_df_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s02_regslice_to_auto_us_df_ARQOS(3 downto 0),
      m_axi_arready => s02_regslice_to_auto_us_df_ARREADY,
      m_axi_arregion(3 downto 0) => s02_regslice_to_auto_us_df_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s02_regslice_to_auto_us_df_ARSIZE(2 downto 0),
      m_axi_arvalid => s02_regslice_to_auto_us_df_ARVALID,
      m_axi_rdata(63 downto 0) => s02_regslice_to_auto_us_df_RDATA(63 downto 0),
      m_axi_rlast => s02_regslice_to_auto_us_df_RLAST,
      m_axi_rready => s02_regslice_to_auto_us_df_RREADY,
      m_axi_rresp(1 downto 0) => s02_regslice_to_auto_us_df_RRESP(1 downto 0),
      m_axi_rvalid => s02_regslice_to_auto_us_df_RVALID,
      s_axi_araddr(31 downto 0) => s02_couplers_to_s02_regslice_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s02_couplers_to_s02_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_couplers_to_s02_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s02_couplers_to_s02_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s02_couplers_to_s02_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s02_couplers_to_s02_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s02_couplers_to_s02_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_couplers_to_s02_regslice_ARVALID,
      s_axi_rdata(63 downto 0) => s02_couplers_to_s02_regslice_RDATA(63 downto 0),
      s_axi_rlast => s02_couplers_to_s02_regslice_RLAST,
      s_axi_rready => s02_couplers_to_s02_regslice_RREADY,
      s_axi_rresp(1 downto 0) => s02_couplers_to_s02_regslice_RRESP(1 downto 0),
      s_axi_rvalid => s02_couplers_to_s02_regslice_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_axi_ic_processing_system7_0_M_AXI_GP0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end pynq_axi_ic_processing_system7_0_M_AXI_GP0_0;

architecture STRUCTURE of pynq_axi_ic_processing_system7_0_M_AXI_GP0_0 is
  component pynq_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component pynq_xbar_0;
  signal axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID;
  M01_AXI_araddr(9 downto 0) <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR(9 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID;
  M01_AXI_awaddr(9 downto 0) <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR(9 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID;
  S00_AXI_arready <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WREADY;
  axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net <= ACLK;
  axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net <= ARESETN;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY <= M01_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1COBY2N
     port map (
      M_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID,
      S_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      S_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_DZ8YMH
     port map (
      M_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      M_AXI_araddr(9 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARADDR(9 downto 0),
      M_AXI_arready => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_awaddr(9 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWADDR(9 downto 0),
      M_AXI_awready => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_wvalid => m01_couplers_to_axi_ic_processing_system7_0_M_AXI_GP0_WVALID,
      S_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      S_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_TCRB4A
     port map (
      M_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      S_ARESETN => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_ic_processing_system7_0_M_AXI_GP0_to_s00_couplers_WVALID
    );
xbar: component pynq_xbar_0
     port map (
      aclk => axi_ic_processing_system7_0_M_AXI_GP0_ACLK_net,
      aresetn => axi_ic_processing_system7_0_M_AXI_GP0_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_axi_ic_processing_system7_0_S_AXI_ACP_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC
  );
end pynq_axi_ic_processing_system7_0_S_AXI_ACP_0;

architecture STRUCTURE of pynq_axi_ic_processing_system7_0_S_AXI_ACP_0 is
  component pynq_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3071 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3071 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 2047 downto 1024 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 3071 downto 2048 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RREADY;
  M00_AXI_wdata(63 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WDATA(63 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WLAST;
  M00_AXI_wstrb(7 downto 0) <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WSTRB(7 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BVALID;
  S00_AXI_rdata(1023 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RDATA(1023 downto 0);
  S00_AXI_rlast <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREADY;
  S01_AXI_awready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RVALID;
  S01_AXI_wready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WREADY;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_arready <= axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARREADY;
  S02_AXI_rdata(63 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RDATA(63 downto 0);
  S02_AXI_rlast <= axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RVALID;
  axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net <= ACLK;
  axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net <= ARESETN;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WDATA(1023 downto 0) <= S00_AXI_wdata(1023 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WSTRB(127 downto 0) <= S00_AXI_wstrb(127 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLOCK(1 downto 0) <= S01_AXI_arlock(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREGION(3 downto 0) <= S01_AXI_arregion(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLOCK(1 downto 0) <= S01_AXI_awlock(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREGION(3 downto 0) <= S01_AXI_awregion(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BREADY <= S01_AXI_bready;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RREADY <= S01_AXI_rready;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WLAST <= S01_AXI_wlast;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RREADY <= S02_AXI_rready;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1G812EK
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_BVALID,
      M_AXI_rdata(63 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RDATA(63 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RLAST,
      M_AXI_rready => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_RVALID,
      M_AXI_wdata(63 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WDATA(63 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WLAST,
      M_AXI_wready => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WREADY,
      M_AXI_wstrb(7 downto 0) => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WSTRB(7 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_ic_processing_system7_0_S_AXI_ACP_WVALID,
      S_ACLK => axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net,
      S_ARESETN => axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(1023 downto 0) => xbar_to_m00_couplers_RDATA(1023 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(1023 downto 0) => xbar_to_m00_couplers_WDATA(1023 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(127 downto 0) => xbar_to_m00_couplers_WSTRB(127 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_Y0CP5L
     port map (
      M_ACLK => axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(1023 downto 0) => s00_couplers_to_xbar_RDATA(1023 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(1023 downto 0) => s00_couplers_to_xbar_WDATA(1023 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(127 downto 0) => s00_couplers_to_xbar_WSTRB(127 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_BVALID,
      S_AXI_rdata(1023 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RDATA(1023 downto 0),
      S_AXI_rlast => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RLAST,
      S_AXI_rready => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_RVALID,
      S_AXI_wdata(1023 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WDATA(1023 downto 0),
      S_AXI_wlast => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WLAST,
      S_AXI_wready => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WREADY,
      S_AXI_wstrb(127 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WSTRB(127 downto 0),
      S_AXI_wvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1S9J0OF
     port map (
      M_ACLK => axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(1023 downto 0) => s01_couplers_to_xbar_RDATA(2047 downto 1024),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(1023 downto 0) => s01_couplers_to_xbar_WDATA(1023 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(127 downto 0) => s01_couplers_to_xbar_WSTRB(127 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_AWVALID,
      S_AXI_bready => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RLAST,
      S_AXI_rready => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WLAST,
      S_AXI_wready => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_17A35YS
     port map (
      M_ACLK => axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net,
      M_ARESETN => axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s02_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_rdata(1023 downto 0) => s02_couplers_to_xbar_RDATA(3071 downto 2048),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_ARVALID,
      S_AXI_rdata(63 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RDATA(63 downto 0),
      S_AXI_rlast => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RLAST,
      S_AXI_rready => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_ic_processing_system7_0_S_AXI_ACP_to_s02_couplers_RVALID
    );
xbar: component pynq_xbar_1
     port map (
      aclk => axi_ic_processing_system7_0_S_AXI_ACP_ACLK_net,
      aresetn => axi_ic_processing_system7_0_S_AXI_ACP_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(1023 downto 0) => xbar_to_m00_couplers_RDATA(1023 downto 0),
      m_axi_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(1023 downto 0) => xbar_to_m00_couplers_WDATA(1023 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(127 downto 0) => xbar_to_m00_couplers_WSTRB(127 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 4) => B"00",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 8) => B"0000",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => B"00000000",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2) => '0',
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(8 downto 6) => B"000",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 8) => B"0000",
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2) => NLW_xbar_s_axi_awready_UNCONNECTED(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(8 downto 6) => B"000",
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2) => '0',
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => '0',
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => NLW_xbar_s_axi_bresp_UNCONNECTED(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => NLW_xbar_s_axi_bvalid_UNCONNECTED(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(3071 downto 2048) => s02_couplers_to_xbar_RDATA(3071 downto 2048),
      s_axi_rdata(2047 downto 1024) => s01_couplers_to_xbar_RDATA(2047 downto 1024),
      s_axi_rdata(1023 downto 0) => s00_couplers_to_xbar_RDATA(1023 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(3071 downto 2048) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(2047 downto 1024) => s01_couplers_to_xbar_WDATA(1023 downto 0),
      s_axi_wdata(1023 downto 0) => s00_couplers_to_xbar_WDATA(1023 downto 0),
      s_axi_wlast(2) => '1',
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2) => NLW_xbar_s_axi_wready_UNCONNECTED(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(383 downto 256) => B"11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
      s_axi_wstrb(255 downto 128) => s01_couplers_to_xbar_WSTRB(127 downto 0),
      s_axi_wstrb(127 downto 0) => s00_couplers_to_xbar_WSTRB(127 downto 0),
      s_axi_wvalid(2) => '0',
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pynq : entity is "pynq,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pynq,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=38,numReposBlks=29,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SDSoC,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pynq : entity is "pynq.hwdef";
end pynq;

architecture STRUCTURE of pynq is
  component pynq_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_proc_sys_reset_0_0;
  component pynq_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_proc_sys_reset_1_0;
  component pynq_proc_sys_reset_2_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_proc_sys_reset_2_0;
  component pynq_proc_sys_reset_3_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_proc_sys_reset_3_0;
  component pynq_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_ARREADY : out STD_LOGIC;
    S_AXI_ACP_AWREADY : out STD_LOGIC;
    S_AXI_ACP_BVALID : out STD_LOGIC;
    S_AXI_ACP_RLAST : out STD_LOGIC;
    S_AXI_ACP_RVALID : out STD_LOGIC;
    S_AXI_ACP_WREADY : out STD_LOGIC;
    S_AXI_ACP_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_BID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_RID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ACP_ACLK : in STD_LOGIC;
    S_AXI_ACP_ARVALID : in STD_LOGIC;
    S_AXI_ACP_AWVALID : in STD_LOGIC;
    S_AXI_ACP_BREADY : in STD_LOGIC;
    S_AXI_ACP_RREADY : in STD_LOGIC;
    S_AXI_ACP_WLAST : in STD_LOGIC;
    S_AXI_ACP_WVALID : in STD_LOGIC;
    S_AXI_ACP_ARID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_WID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARUSER : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ACP_AWUSER : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ACP_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ACP_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_CLK3 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component pynq_processing_system7_0_0;
  component pynq_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pynq_xlconcat_0_0;
  component pynq_dm_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component pynq_dm_0_0;
  component pynq_encrypt_1_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    m_axi_ctx_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWVALID : out STD_LOGIC;
    m_axi_ctx_AWREADY : in STD_LOGIC;
    m_axi_ctx_WDATA : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_ctx_WSTRB : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_ctx_WLAST : out STD_LOGIC;
    m_axi_ctx_WVALID : out STD_LOGIC;
    m_axi_ctx_WREADY : in STD_LOGIC;
    m_axi_ctx_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_BVALID : in STD_LOGIC;
    m_axi_ctx_BREADY : out STD_LOGIC;
    m_axi_ctx_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARVALID : out STD_LOGIC;
    m_axi_ctx_ARREADY : in STD_LOGIC;
    m_axi_ctx_RDATA : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_ctx_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_RLAST : in STD_LOGIC;
    m_axi_ctx_RVALID : in STD_LOGIC;
    m_axi_ctx_RREADY : out STD_LOGIC;
    m_axi_buf_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWVALID : out STD_LOGIC;
    m_axi_buf_r_AWREADY : in STD_LOGIC;
    m_axi_buf_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_WLAST : out STD_LOGIC;
    m_axi_buf_r_WVALID : out STD_LOGIC;
    m_axi_buf_r_WREADY : in STD_LOGIC;
    m_axi_buf_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_BVALID : in STD_LOGIC;
    m_axi_buf_r_BREADY : out STD_LOGIC;
    m_axi_buf_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARVALID : out STD_LOGIC;
    m_axi_buf_r_ARREADY : in STD_LOGIC;
    m_axi_buf_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_RLAST : in STD_LOGIC;
    m_axi_buf_r_RVALID : in STD_LOGIC;
    m_axi_buf_r_RREADY : out STD_LOGIC;
    ctx_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k_Clk_A : out STD_LOGIC;
    k_Rst_A : out STD_LOGIC;
    k_EN_A : out STD_LOGIC;
    k_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    k_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    k_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    buf_offset : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component pynq_encrypt_1_0;
  component pynq_encrypt_1_if_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    acc_aclk : in STD_LOGIC;
    acc_aresetn : in STD_LOGIC;
    ap_resetn : out STD_LOGIC;
    ap_clk : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_done : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    ap_continue : out STD_LOGIC;
    ap_iscalar_0_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_iscalar_1_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_bram_0_aclk : in STD_LOGIC;
    s_axis_bram_0_aresetn : in STD_LOGIC;
    s_axis_bram_0_tlast : in STD_LOGIC;
    s_axis_bram_0_tvalid : in STD_LOGIC;
    s_axis_bram_0_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_bram_0_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_bram_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_bram_0_tready : out STD_LOGIC;
    ap_bram_iarg_0_addr0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_bram_iarg_0_din0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_bram_iarg_0_dout0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_bram_iarg_0_clk0 : in STD_LOGIC;
    ap_bram_iarg_0_rst0 : in STD_LOGIC;
    ap_bram_iarg_0_we0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_bram_iarg_0_en0 : in STD_LOGIC;
    AP_AXIMM_0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_0_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AP_AXIMM_0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_0_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_AWVALID : in STD_LOGIC;
    AP_AXIMM_0_AWREADY : out STD_LOGIC;
    AP_AXIMM_0_WDATA : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    AP_AXIMM_0_WSTRB : in STD_LOGIC_VECTOR ( 127 downto 0 );
    AP_AXIMM_0_WLAST : in STD_LOGIC;
    AP_AXIMM_0_WVALID : in STD_LOGIC;
    AP_AXIMM_0_WREADY : out STD_LOGIC;
    AP_AXIMM_0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_BVALID : out STD_LOGIC;
    AP_AXIMM_0_BREADY : in STD_LOGIC;
    AP_AXIMM_0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_0_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AP_AXIMM_0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_0_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_0_ARVALID : in STD_LOGIC;
    AP_AXIMM_0_ARREADY : out STD_LOGIC;
    AP_AXIMM_0_RDATA : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    AP_AXIMM_0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_0_RLAST : out STD_LOGIC;
    AP_AXIMM_0_RVALID : out STD_LOGIC;
    AP_AXIMM_0_RREADY : in STD_LOGIC;
    M_AXIMM_0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIMM_0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_AWVALID : out STD_LOGIC;
    M_AXIMM_0_AWREADY : in STD_LOGIC;
    M_AXIMM_0_WDATA : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXIMM_0_WSTRB : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXIMM_0_WLAST : out STD_LOGIC;
    M_AXIMM_0_WVALID : out STD_LOGIC;
    M_AXIMM_0_WREADY : in STD_LOGIC;
    M_AXIMM_0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_BVALID : in STD_LOGIC;
    M_AXIMM_0_BREADY : out STD_LOGIC;
    M_AXIMM_0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIMM_0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_0_ARVALID : out STD_LOGIC;
    M_AXIMM_0_ARREADY : in STD_LOGIC;
    M_AXIMM_0_RDATA : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    M_AXIMM_0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_0_RLAST : in STD_LOGIC;
    M_AXIMM_0_RVALID : in STD_LOGIC;
    M_AXIMM_0_RREADY : out STD_LOGIC;
    AP_AXIMM_1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_1_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AP_AXIMM_1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_1_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_AWVALID : in STD_LOGIC;
    AP_AXIMM_1_AWREADY : out STD_LOGIC;
    AP_AXIMM_1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_WLAST : in STD_LOGIC;
    AP_AXIMM_1_WVALID : in STD_LOGIC;
    AP_AXIMM_1_WREADY : out STD_LOGIC;
    AP_AXIMM_1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_BVALID : out STD_LOGIC;
    AP_AXIMM_1_BREADY : in STD_LOGIC;
    AP_AXIMM_1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_1_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AP_AXIMM_1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AP_AXIMM_1_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AP_AXIMM_1_ARVALID : in STD_LOGIC;
    AP_AXIMM_1_ARREADY : out STD_LOGIC;
    AP_AXIMM_1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AP_AXIMM_1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AP_AXIMM_1_RLAST : out STD_LOGIC;
    AP_AXIMM_1_RVALID : out STD_LOGIC;
    AP_AXIMM_1_RREADY : in STD_LOGIC;
    M_AXIMM_1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIMM_1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_AWVALID : out STD_LOGIC;
    M_AXIMM_1_AWREADY : in STD_LOGIC;
    M_AXIMM_1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_WLAST : out STD_LOGIC;
    M_AXIMM_1_WVALID : out STD_LOGIC;
    M_AXIMM_1_WREADY : in STD_LOGIC;
    M_AXIMM_1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_BVALID : in STD_LOGIC;
    M_AXIMM_1_BREADY : out STD_LOGIC;
    M_AXIMM_1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIMM_1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIMM_1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIMM_1_ARVALID : out STD_LOGIC;
    M_AXIMM_1_ARREADY : in STD_LOGIC;
    M_AXIMM_1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIMM_1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXIMM_1_RLAST : in STD_LOGIC;
    M_AXIMM_1_RVALID : in STD_LOGIC;
    M_AXIMM_1_RREADY : out STD_LOGIC
  );
  end component pynq_encrypt_1_if_0;
  component pynq_sds_irq_const_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pynq_sds_irq_const_0;
  component pynq_axcache_0xE_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component pynq_axcache_0xE_0;
  signal axcache_0xE_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WLAST : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WVALID : STD_LOGIC;
  signal dm_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dm_0_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dm_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal dm_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal dm_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal dm_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dm_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dm_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dm_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dm_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal dm_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dm_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal dm_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dm_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal dm_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal dm_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dm_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_ARVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_AWVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_BREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_BVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_RLAST : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_RREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_RVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_WLAST : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_WREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_0_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal encrypt_1_if_M_AXIMM_0_WVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_ARVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_AWVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_BREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_BVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_RLAST : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_RREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_RVALID : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_WLAST : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_WREADY : STD_LOGIC;
  signal encrypt_1_if_M_AXIMM_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_if_M_AXIMM_1_WVALID : STD_LOGIC;
  signal encrypt_1_if_ap_clk : STD_LOGIC;
  signal encrypt_1_if_ap_ctrl_done : STD_LOGIC;
  signal encrypt_1_if_ap_ctrl_idle : STD_LOGIC;
  signal encrypt_1_if_ap_ctrl_ready : STD_LOGIC;
  signal encrypt_1_if_ap_ctrl_start : STD_LOGIC;
  signal encrypt_1_if_ap_iscalar_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_ap_iscalar_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_if_ap_resetn : STD_LOGIC;
  signal encrypt_1_k_PORTA_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_k_PORTA_CLK : STD_LOGIC;
  signal encrypt_1_k_PORTA_DIN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_k_PORTA_DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_k_PORTA_EN : STD_LOGIC;
  signal encrypt_1_k_PORTA_RST : STD_LOGIC;
  signal encrypt_1_k_PORTA_WE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal encrypt_1_m_axi_buf_r_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARREADY : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_buf_r_ARVALID : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWREADY : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_buf_r_AWVALID : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_BREADY : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_BVALID : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_buf_r_RLAST : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_RREADY : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_buf_r_RVALID : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_buf_r_WLAST : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_WREADY : STD_LOGIC;
  signal encrypt_1_m_axi_buf_r_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_buf_r_WVALID : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_ctx_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_m_axi_ctx_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_ctx_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_ARREADY : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_ctx_ARVALID : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal encrypt_1_m_axi_ctx_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encrypt_1_m_axi_ctx_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_ctx_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_AWREADY : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal encrypt_1_m_axi_ctx_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal encrypt_1_m_axi_ctx_AWVALID : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_BREADY : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_BVALID : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_RDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal encrypt_1_m_axi_ctx_RLAST : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_RREADY : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal encrypt_1_m_axi_ctx_RVALID : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_WDATA : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal encrypt_1_m_axi_ctx_WLAST : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_WREADY : STD_LOGIC;
  signal encrypt_1_m_axi_ctx_WSTRB : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal encrypt_1_m_axi_ctx_WVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_3_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_3_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK3 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal sds_irq_const_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dm_0_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_dm_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_dm_0_m_axi_mm2s_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_encrypt_1_if_ap_continue_UNCONNECTED : STD_LOGIC;
  signal NLW_encrypt_1_if_M_AXIMM_0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_encrypt_1_if_M_AXIMM_0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_encrypt_1_if_M_AXIMM_1_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_encrypt_1_if_M_AXIMM_1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_3_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_3_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_3_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_ACP_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_ACP_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
axcache_0xE: component pynq_axcache_0xE_0
     port map (
      dout(3 downto 0) => axcache_0xE_dout(3 downto 0)
    );
axi_ic_processing_system7_0_M_AXI_GP0: entity work.pynq_axi_ic_processing_system7_0_M_AXI_GP0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK3,
      ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK3,
      M00_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK3,
      M01_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      M01_AXI_araddr(9 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARADDR(9 downto 0),
      M01_AXI_arready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARVALID,
      M01_AXI_awaddr(9 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWADDR(9 downto 0),
      M01_AXI_awready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WREADY,
      M01_AXI_wvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK3,
      S00_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
axi_ic_processing_system7_0_S_AXI_ACP: entity work.pynq_axi_ic_processing_system7_0_S_AXI_ACP_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK3,
      ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK3,
      M00_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RLAST,
      M00_AXI_rready => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WLAST,
      M00_AXI_wready => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      S00_AXI_araddr(31 downto 0) => encrypt_1_if_M_AXIMM_0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => encrypt_1_if_M_AXIMM_0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axcache_0xE_dout(3 downto 0),
      S00_AXI_arlen(7 downto 0) => encrypt_1_if_M_AXIMM_0_ARLEN(7 downto 0),
      S00_AXI_arlock(1 downto 0) => encrypt_1_if_M_AXIMM_0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => encrypt_1_if_M_AXIMM_0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => encrypt_1_if_M_AXIMM_0_ARQOS(3 downto 0),
      S00_AXI_arready => encrypt_1_if_M_AXIMM_0_ARREADY,
      S00_AXI_arregion(3 downto 0) => encrypt_1_if_M_AXIMM_0_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => encrypt_1_if_M_AXIMM_0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => encrypt_1_if_M_AXIMM_0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => encrypt_1_if_M_AXIMM_0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => encrypt_1_if_M_AXIMM_0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axcache_0xE_dout(3 downto 0),
      S00_AXI_awlen(7 downto 0) => encrypt_1_if_M_AXIMM_0_AWLEN(7 downto 0),
      S00_AXI_awlock(1 downto 0) => encrypt_1_if_M_AXIMM_0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => encrypt_1_if_M_AXIMM_0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => encrypt_1_if_M_AXIMM_0_AWQOS(3 downto 0),
      S00_AXI_awready => encrypt_1_if_M_AXIMM_0_AWREADY,
      S00_AXI_awregion(3 downto 0) => encrypt_1_if_M_AXIMM_0_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => encrypt_1_if_M_AXIMM_0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => encrypt_1_if_M_AXIMM_0_AWVALID,
      S00_AXI_bready => encrypt_1_if_M_AXIMM_0_BREADY,
      S00_AXI_bresp(1 downto 0) => encrypt_1_if_M_AXIMM_0_BRESP(1 downto 0),
      S00_AXI_bvalid => encrypt_1_if_M_AXIMM_0_BVALID,
      S00_AXI_rdata(1023 downto 0) => encrypt_1_if_M_AXIMM_0_RDATA(1023 downto 0),
      S00_AXI_rlast => encrypt_1_if_M_AXIMM_0_RLAST,
      S00_AXI_rready => encrypt_1_if_M_AXIMM_0_RREADY,
      S00_AXI_rresp(1 downto 0) => encrypt_1_if_M_AXIMM_0_RRESP(1 downto 0),
      S00_AXI_rvalid => encrypt_1_if_M_AXIMM_0_RVALID,
      S00_AXI_wdata(1023 downto 0) => encrypt_1_if_M_AXIMM_0_WDATA(1023 downto 0),
      S00_AXI_wlast => encrypt_1_if_M_AXIMM_0_WLAST,
      S00_AXI_wready => encrypt_1_if_M_AXIMM_0_WREADY,
      S00_AXI_wstrb(127 downto 0) => encrypt_1_if_M_AXIMM_0_WSTRB(127 downto 0),
      S00_AXI_wvalid => encrypt_1_if_M_AXIMM_0_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      S01_AXI_araddr(31 downto 0) => encrypt_1_if_M_AXIMM_1_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => encrypt_1_if_M_AXIMM_1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axcache_0xE_dout(3 downto 0),
      S01_AXI_arlen(7 downto 0) => encrypt_1_if_M_AXIMM_1_ARLEN(7 downto 0),
      S01_AXI_arlock(1 downto 0) => encrypt_1_if_M_AXIMM_1_ARLOCK(1 downto 0),
      S01_AXI_arprot(2 downto 0) => encrypt_1_if_M_AXIMM_1_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => encrypt_1_if_M_AXIMM_1_ARQOS(3 downto 0),
      S01_AXI_arready => encrypt_1_if_M_AXIMM_1_ARREADY,
      S01_AXI_arregion(3 downto 0) => encrypt_1_if_M_AXIMM_1_ARREGION(3 downto 0),
      S01_AXI_arsize(2 downto 0) => encrypt_1_if_M_AXIMM_1_ARSIZE(2 downto 0),
      S01_AXI_arvalid => encrypt_1_if_M_AXIMM_1_ARVALID,
      S01_AXI_awaddr(31 downto 0) => encrypt_1_if_M_AXIMM_1_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => encrypt_1_if_M_AXIMM_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axcache_0xE_dout(3 downto 0),
      S01_AXI_awlen(7 downto 0) => encrypt_1_if_M_AXIMM_1_AWLEN(7 downto 0),
      S01_AXI_awlock(1 downto 0) => encrypt_1_if_M_AXIMM_1_AWLOCK(1 downto 0),
      S01_AXI_awprot(2 downto 0) => encrypt_1_if_M_AXIMM_1_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => encrypt_1_if_M_AXIMM_1_AWQOS(3 downto 0),
      S01_AXI_awready => encrypt_1_if_M_AXIMM_1_AWREADY,
      S01_AXI_awregion(3 downto 0) => encrypt_1_if_M_AXIMM_1_AWREGION(3 downto 0),
      S01_AXI_awsize(2 downto 0) => encrypt_1_if_M_AXIMM_1_AWSIZE(2 downto 0),
      S01_AXI_awvalid => encrypt_1_if_M_AXIMM_1_AWVALID,
      S01_AXI_bready => encrypt_1_if_M_AXIMM_1_BREADY,
      S01_AXI_bresp(1 downto 0) => encrypt_1_if_M_AXIMM_1_BRESP(1 downto 0),
      S01_AXI_bvalid => encrypt_1_if_M_AXIMM_1_BVALID,
      S01_AXI_rdata(31 downto 0) => encrypt_1_if_M_AXIMM_1_RDATA(31 downto 0),
      S01_AXI_rlast => encrypt_1_if_M_AXIMM_1_RLAST,
      S01_AXI_rready => encrypt_1_if_M_AXIMM_1_RREADY,
      S01_AXI_rresp(1 downto 0) => encrypt_1_if_M_AXIMM_1_RRESP(1 downto 0),
      S01_AXI_rvalid => encrypt_1_if_M_AXIMM_1_RVALID,
      S01_AXI_wdata(31 downto 0) => encrypt_1_if_M_AXIMM_1_WDATA(31 downto 0),
      S01_AXI_wlast => encrypt_1_if_M_AXIMM_1_WLAST,
      S01_AXI_wready => encrypt_1_if_M_AXIMM_1_WREADY,
      S01_AXI_wstrb(3 downto 0) => encrypt_1_if_M_AXIMM_1_WSTRB(3 downto 0),
      S01_AXI_wvalid => encrypt_1_if_M_AXIMM_1_WVALID,
      S02_ACLK => processing_system7_0_FCLK_CLK3,
      S02_ARESETN => proc_sys_reset_3_interconnect_aresetn(0),
      S02_AXI_araddr(31 downto 0) => dm_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => dm_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axcache_0xE_dout(3 downto 0),
      S02_AXI_arlen(7 downto 0) => dm_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => dm_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S02_AXI_arready => dm_0_M_AXI_MM2S_ARREADY,
      S02_AXI_arsize(2 downto 0) => dm_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S02_AXI_arvalid => dm_0_M_AXI_MM2S_ARVALID,
      S02_AXI_rdata(63 downto 0) => dm_0_M_AXI_MM2S_RDATA(63 downto 0),
      S02_AXI_rlast => dm_0_M_AXI_MM2S_RLAST,
      S02_AXI_rready => dm_0_M_AXI_MM2S_RREADY,
      S02_AXI_rresp(1 downto 0) => dm_0_M_AXI_MM2S_RRESP(1 downto 0),
      S02_AXI_rvalid => dm_0_M_AXI_MM2S_RVALID
    );
dm_0: component pynq_dm_0_0
     port map (
      axi_resetn => proc_sys_reset_3_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK3,
      m_axi_mm2s_araddr(31 downto 0) => dm_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => dm_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => NLW_dm_0_m_axi_mm2s_arcache_UNCONNECTED(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => dm_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => dm_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => dm_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => dm_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => dm_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(63 downto 0) => dm_0_M_AXI_MM2S_RDATA(63 downto 0),
      m_axi_mm2s_rlast => dm_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => dm_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => dm_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => dm_0_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(63 downto 0) => dm_0_M_AXIS_MM2S_TDATA(63 downto 0),
      m_axis_mm2s_tkeep(7 downto 0) => dm_0_M_AXIS_MM2S_TKEEP(7 downto 0),
      m_axis_mm2s_tlast => dm_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => dm_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => dm_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => NLW_dm_0_mm2s_introut_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_dm_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK3,
      s_axi_lite_araddr(9 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARREADY,
      s_axi_lite_arvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWREADY,
      s_axi_lite_awvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_AWVALID,
      s_axi_lite_bready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WREADY,
      s_axi_lite_wvalid => axi_ic_processing_system7_0_M_AXI_GP0_M01_AXI_WVALID
    );
encrypt_1: component pynq_encrypt_1_0
     port map (
      ap_clk => encrypt_1_if_ap_clk,
      ap_done => encrypt_1_if_ap_ctrl_done,
      ap_idle => encrypt_1_if_ap_ctrl_idle,
      ap_ready => encrypt_1_if_ap_ctrl_ready,
      ap_rst_n => encrypt_1_if_ap_resetn,
      ap_start => encrypt_1_if_ap_ctrl_start,
      buf_offset(31 downto 0) => encrypt_1_if_ap_iscalar_1_dout(31 downto 0),
      ctx_offset(31 downto 0) => encrypt_1_if_ap_iscalar_0_dout(31 downto 0),
      k_Addr_A(31 downto 0) => encrypt_1_k_PORTA_ADDR(31 downto 0),
      k_Clk_A => encrypt_1_k_PORTA_CLK,
      k_Din_A(7 downto 0) => encrypt_1_k_PORTA_DIN(7 downto 0),
      k_Dout_A(7 downto 0) => encrypt_1_k_PORTA_DOUT(7 downto 0),
      k_EN_A => encrypt_1_k_PORTA_EN,
      k_Rst_A => encrypt_1_k_PORTA_RST,
      k_WEN_A(0) => encrypt_1_k_PORTA_WE(0),
      m_axi_buf_r_ARADDR(31 downto 0) => encrypt_1_m_axi_buf_r_ARADDR(31 downto 0),
      m_axi_buf_r_ARBURST(1 downto 0) => encrypt_1_m_axi_buf_r_ARBURST(1 downto 0),
      m_axi_buf_r_ARCACHE(3 downto 0) => encrypt_1_m_axi_buf_r_ARCACHE(3 downto 0),
      m_axi_buf_r_ARLEN(7 downto 0) => encrypt_1_m_axi_buf_r_ARLEN(7 downto 0),
      m_axi_buf_r_ARLOCK(1 downto 0) => encrypt_1_m_axi_buf_r_ARLOCK(1 downto 0),
      m_axi_buf_r_ARPROT(2 downto 0) => encrypt_1_m_axi_buf_r_ARPROT(2 downto 0),
      m_axi_buf_r_ARQOS(3 downto 0) => encrypt_1_m_axi_buf_r_ARQOS(3 downto 0),
      m_axi_buf_r_ARREADY => encrypt_1_m_axi_buf_r_ARREADY,
      m_axi_buf_r_ARREGION(3 downto 0) => encrypt_1_m_axi_buf_r_ARREGION(3 downto 0),
      m_axi_buf_r_ARSIZE(2 downto 0) => encrypt_1_m_axi_buf_r_ARSIZE(2 downto 0),
      m_axi_buf_r_ARVALID => encrypt_1_m_axi_buf_r_ARVALID,
      m_axi_buf_r_AWADDR(31 downto 0) => encrypt_1_m_axi_buf_r_AWADDR(31 downto 0),
      m_axi_buf_r_AWBURST(1 downto 0) => encrypt_1_m_axi_buf_r_AWBURST(1 downto 0),
      m_axi_buf_r_AWCACHE(3 downto 0) => encrypt_1_m_axi_buf_r_AWCACHE(3 downto 0),
      m_axi_buf_r_AWLEN(7 downto 0) => encrypt_1_m_axi_buf_r_AWLEN(7 downto 0),
      m_axi_buf_r_AWLOCK(1 downto 0) => encrypt_1_m_axi_buf_r_AWLOCK(1 downto 0),
      m_axi_buf_r_AWPROT(2 downto 0) => encrypt_1_m_axi_buf_r_AWPROT(2 downto 0),
      m_axi_buf_r_AWQOS(3 downto 0) => encrypt_1_m_axi_buf_r_AWQOS(3 downto 0),
      m_axi_buf_r_AWREADY => encrypt_1_m_axi_buf_r_AWREADY,
      m_axi_buf_r_AWREGION(3 downto 0) => encrypt_1_m_axi_buf_r_AWREGION(3 downto 0),
      m_axi_buf_r_AWSIZE(2 downto 0) => encrypt_1_m_axi_buf_r_AWSIZE(2 downto 0),
      m_axi_buf_r_AWVALID => encrypt_1_m_axi_buf_r_AWVALID,
      m_axi_buf_r_BREADY => encrypt_1_m_axi_buf_r_BREADY,
      m_axi_buf_r_BRESP(1 downto 0) => encrypt_1_m_axi_buf_r_BRESP(1 downto 0),
      m_axi_buf_r_BVALID => encrypt_1_m_axi_buf_r_BVALID,
      m_axi_buf_r_RDATA(31 downto 0) => encrypt_1_m_axi_buf_r_RDATA(31 downto 0),
      m_axi_buf_r_RLAST => encrypt_1_m_axi_buf_r_RLAST,
      m_axi_buf_r_RREADY => encrypt_1_m_axi_buf_r_RREADY,
      m_axi_buf_r_RRESP(1 downto 0) => encrypt_1_m_axi_buf_r_RRESP(1 downto 0),
      m_axi_buf_r_RVALID => encrypt_1_m_axi_buf_r_RVALID,
      m_axi_buf_r_WDATA(31 downto 0) => encrypt_1_m_axi_buf_r_WDATA(31 downto 0),
      m_axi_buf_r_WLAST => encrypt_1_m_axi_buf_r_WLAST,
      m_axi_buf_r_WREADY => encrypt_1_m_axi_buf_r_WREADY,
      m_axi_buf_r_WSTRB(3 downto 0) => encrypt_1_m_axi_buf_r_WSTRB(3 downto 0),
      m_axi_buf_r_WVALID => encrypt_1_m_axi_buf_r_WVALID,
      m_axi_ctx_ARADDR(31 downto 0) => encrypt_1_m_axi_ctx_ARADDR(31 downto 0),
      m_axi_ctx_ARBURST(1 downto 0) => encrypt_1_m_axi_ctx_ARBURST(1 downto 0),
      m_axi_ctx_ARCACHE(3 downto 0) => encrypt_1_m_axi_ctx_ARCACHE(3 downto 0),
      m_axi_ctx_ARLEN(7 downto 0) => encrypt_1_m_axi_ctx_ARLEN(7 downto 0),
      m_axi_ctx_ARLOCK(1 downto 0) => encrypt_1_m_axi_ctx_ARLOCK(1 downto 0),
      m_axi_ctx_ARPROT(2 downto 0) => encrypt_1_m_axi_ctx_ARPROT(2 downto 0),
      m_axi_ctx_ARQOS(3 downto 0) => encrypt_1_m_axi_ctx_ARQOS(3 downto 0),
      m_axi_ctx_ARREADY => encrypt_1_m_axi_ctx_ARREADY,
      m_axi_ctx_ARREGION(3 downto 0) => encrypt_1_m_axi_ctx_ARREGION(3 downto 0),
      m_axi_ctx_ARSIZE(2 downto 0) => encrypt_1_m_axi_ctx_ARSIZE(2 downto 0),
      m_axi_ctx_ARVALID => encrypt_1_m_axi_ctx_ARVALID,
      m_axi_ctx_AWADDR(31 downto 0) => encrypt_1_m_axi_ctx_AWADDR(31 downto 0),
      m_axi_ctx_AWBURST(1 downto 0) => encrypt_1_m_axi_ctx_AWBURST(1 downto 0),
      m_axi_ctx_AWCACHE(3 downto 0) => encrypt_1_m_axi_ctx_AWCACHE(3 downto 0),
      m_axi_ctx_AWLEN(7 downto 0) => encrypt_1_m_axi_ctx_AWLEN(7 downto 0),
      m_axi_ctx_AWLOCK(1 downto 0) => encrypt_1_m_axi_ctx_AWLOCK(1 downto 0),
      m_axi_ctx_AWPROT(2 downto 0) => encrypt_1_m_axi_ctx_AWPROT(2 downto 0),
      m_axi_ctx_AWQOS(3 downto 0) => encrypt_1_m_axi_ctx_AWQOS(3 downto 0),
      m_axi_ctx_AWREADY => encrypt_1_m_axi_ctx_AWREADY,
      m_axi_ctx_AWREGION(3 downto 0) => encrypt_1_m_axi_ctx_AWREGION(3 downto 0),
      m_axi_ctx_AWSIZE(2 downto 0) => encrypt_1_m_axi_ctx_AWSIZE(2 downto 0),
      m_axi_ctx_AWVALID => encrypt_1_m_axi_ctx_AWVALID,
      m_axi_ctx_BREADY => encrypt_1_m_axi_ctx_BREADY,
      m_axi_ctx_BRESP(1 downto 0) => encrypt_1_m_axi_ctx_BRESP(1 downto 0),
      m_axi_ctx_BVALID => encrypt_1_m_axi_ctx_BVALID,
      m_axi_ctx_RDATA(1023 downto 0) => encrypt_1_m_axi_ctx_RDATA(1023 downto 0),
      m_axi_ctx_RLAST => encrypt_1_m_axi_ctx_RLAST,
      m_axi_ctx_RREADY => encrypt_1_m_axi_ctx_RREADY,
      m_axi_ctx_RRESP(1 downto 0) => encrypt_1_m_axi_ctx_RRESP(1 downto 0),
      m_axi_ctx_RVALID => encrypt_1_m_axi_ctx_RVALID,
      m_axi_ctx_WDATA(1023 downto 0) => encrypt_1_m_axi_ctx_WDATA(1023 downto 0),
      m_axi_ctx_WLAST => encrypt_1_m_axi_ctx_WLAST,
      m_axi_ctx_WREADY => encrypt_1_m_axi_ctx_WREADY,
      m_axi_ctx_WSTRB(127 downto 0) => encrypt_1_m_axi_ctx_WSTRB(127 downto 0),
      m_axi_ctx_WVALID => encrypt_1_m_axi_ctx_WVALID
    );
encrypt_1_if: component pynq_encrypt_1_if_0
     port map (
      AP_AXIMM_0_ARADDR(31 downto 0) => encrypt_1_m_axi_ctx_ARADDR(31 downto 0),
      AP_AXIMM_0_ARBURST(1 downto 0) => encrypt_1_m_axi_ctx_ARBURST(1 downto 0),
      AP_AXIMM_0_ARCACHE(3 downto 0) => encrypt_1_m_axi_ctx_ARCACHE(3 downto 0),
      AP_AXIMM_0_ARLEN(7 downto 0) => encrypt_1_m_axi_ctx_ARLEN(7 downto 0),
      AP_AXIMM_0_ARLOCK(1 downto 0) => encrypt_1_m_axi_ctx_ARLOCK(1 downto 0),
      AP_AXIMM_0_ARPROT(2 downto 0) => encrypt_1_m_axi_ctx_ARPROT(2 downto 0),
      AP_AXIMM_0_ARQOS(3 downto 0) => encrypt_1_m_axi_ctx_ARQOS(3 downto 0),
      AP_AXIMM_0_ARREADY => encrypt_1_m_axi_ctx_ARREADY,
      AP_AXIMM_0_ARREGION(3 downto 0) => encrypt_1_m_axi_ctx_ARREGION(3 downto 0),
      AP_AXIMM_0_ARSIZE(2 downto 0) => encrypt_1_m_axi_ctx_ARSIZE(2 downto 0),
      AP_AXIMM_0_ARVALID => encrypt_1_m_axi_ctx_ARVALID,
      AP_AXIMM_0_AWADDR(31 downto 0) => encrypt_1_m_axi_ctx_AWADDR(31 downto 0),
      AP_AXIMM_0_AWBURST(1 downto 0) => encrypt_1_m_axi_ctx_AWBURST(1 downto 0),
      AP_AXIMM_0_AWCACHE(3 downto 0) => encrypt_1_m_axi_ctx_AWCACHE(3 downto 0),
      AP_AXIMM_0_AWLEN(7 downto 0) => encrypt_1_m_axi_ctx_AWLEN(7 downto 0),
      AP_AXIMM_0_AWLOCK(1 downto 0) => encrypt_1_m_axi_ctx_AWLOCK(1 downto 0),
      AP_AXIMM_0_AWPROT(2 downto 0) => encrypt_1_m_axi_ctx_AWPROT(2 downto 0),
      AP_AXIMM_0_AWQOS(3 downto 0) => encrypt_1_m_axi_ctx_AWQOS(3 downto 0),
      AP_AXIMM_0_AWREADY => encrypt_1_m_axi_ctx_AWREADY,
      AP_AXIMM_0_AWREGION(3 downto 0) => encrypt_1_m_axi_ctx_AWREGION(3 downto 0),
      AP_AXIMM_0_AWSIZE(2 downto 0) => encrypt_1_m_axi_ctx_AWSIZE(2 downto 0),
      AP_AXIMM_0_AWVALID => encrypt_1_m_axi_ctx_AWVALID,
      AP_AXIMM_0_BREADY => encrypt_1_m_axi_ctx_BREADY,
      AP_AXIMM_0_BRESP(1 downto 0) => encrypt_1_m_axi_ctx_BRESP(1 downto 0),
      AP_AXIMM_0_BVALID => encrypt_1_m_axi_ctx_BVALID,
      AP_AXIMM_0_RDATA(1023 downto 0) => encrypt_1_m_axi_ctx_RDATA(1023 downto 0),
      AP_AXIMM_0_RLAST => encrypt_1_m_axi_ctx_RLAST,
      AP_AXIMM_0_RREADY => encrypt_1_m_axi_ctx_RREADY,
      AP_AXIMM_0_RRESP(1 downto 0) => encrypt_1_m_axi_ctx_RRESP(1 downto 0),
      AP_AXIMM_0_RVALID => encrypt_1_m_axi_ctx_RVALID,
      AP_AXIMM_0_WDATA(1023 downto 0) => encrypt_1_m_axi_ctx_WDATA(1023 downto 0),
      AP_AXIMM_0_WLAST => encrypt_1_m_axi_ctx_WLAST,
      AP_AXIMM_0_WREADY => encrypt_1_m_axi_ctx_WREADY,
      AP_AXIMM_0_WSTRB(127 downto 0) => encrypt_1_m_axi_ctx_WSTRB(127 downto 0),
      AP_AXIMM_0_WVALID => encrypt_1_m_axi_ctx_WVALID,
      AP_AXIMM_1_ARADDR(31 downto 0) => encrypt_1_m_axi_buf_r_ARADDR(31 downto 0),
      AP_AXIMM_1_ARBURST(1 downto 0) => encrypt_1_m_axi_buf_r_ARBURST(1 downto 0),
      AP_AXIMM_1_ARCACHE(3 downto 0) => encrypt_1_m_axi_buf_r_ARCACHE(3 downto 0),
      AP_AXIMM_1_ARLEN(7 downto 0) => encrypt_1_m_axi_buf_r_ARLEN(7 downto 0),
      AP_AXIMM_1_ARLOCK(1 downto 0) => encrypt_1_m_axi_buf_r_ARLOCK(1 downto 0),
      AP_AXIMM_1_ARPROT(2 downto 0) => encrypt_1_m_axi_buf_r_ARPROT(2 downto 0),
      AP_AXIMM_1_ARQOS(3 downto 0) => encrypt_1_m_axi_buf_r_ARQOS(3 downto 0),
      AP_AXIMM_1_ARREADY => encrypt_1_m_axi_buf_r_ARREADY,
      AP_AXIMM_1_ARREGION(3 downto 0) => encrypt_1_m_axi_buf_r_ARREGION(3 downto 0),
      AP_AXIMM_1_ARSIZE(2 downto 0) => encrypt_1_m_axi_buf_r_ARSIZE(2 downto 0),
      AP_AXIMM_1_ARVALID => encrypt_1_m_axi_buf_r_ARVALID,
      AP_AXIMM_1_AWADDR(31 downto 0) => encrypt_1_m_axi_buf_r_AWADDR(31 downto 0),
      AP_AXIMM_1_AWBURST(1 downto 0) => encrypt_1_m_axi_buf_r_AWBURST(1 downto 0),
      AP_AXIMM_1_AWCACHE(3 downto 0) => encrypt_1_m_axi_buf_r_AWCACHE(3 downto 0),
      AP_AXIMM_1_AWLEN(7 downto 0) => encrypt_1_m_axi_buf_r_AWLEN(7 downto 0),
      AP_AXIMM_1_AWLOCK(1 downto 0) => encrypt_1_m_axi_buf_r_AWLOCK(1 downto 0),
      AP_AXIMM_1_AWPROT(2 downto 0) => encrypt_1_m_axi_buf_r_AWPROT(2 downto 0),
      AP_AXIMM_1_AWQOS(3 downto 0) => encrypt_1_m_axi_buf_r_AWQOS(3 downto 0),
      AP_AXIMM_1_AWREADY => encrypt_1_m_axi_buf_r_AWREADY,
      AP_AXIMM_1_AWREGION(3 downto 0) => encrypt_1_m_axi_buf_r_AWREGION(3 downto 0),
      AP_AXIMM_1_AWSIZE(2 downto 0) => encrypt_1_m_axi_buf_r_AWSIZE(2 downto 0),
      AP_AXIMM_1_AWVALID => encrypt_1_m_axi_buf_r_AWVALID,
      AP_AXIMM_1_BREADY => encrypt_1_m_axi_buf_r_BREADY,
      AP_AXIMM_1_BRESP(1 downto 0) => encrypt_1_m_axi_buf_r_BRESP(1 downto 0),
      AP_AXIMM_1_BVALID => encrypt_1_m_axi_buf_r_BVALID,
      AP_AXIMM_1_RDATA(31 downto 0) => encrypt_1_m_axi_buf_r_RDATA(31 downto 0),
      AP_AXIMM_1_RLAST => encrypt_1_m_axi_buf_r_RLAST,
      AP_AXIMM_1_RREADY => encrypt_1_m_axi_buf_r_RREADY,
      AP_AXIMM_1_RRESP(1 downto 0) => encrypt_1_m_axi_buf_r_RRESP(1 downto 0),
      AP_AXIMM_1_RVALID => encrypt_1_m_axi_buf_r_RVALID,
      AP_AXIMM_1_WDATA(31 downto 0) => encrypt_1_m_axi_buf_r_WDATA(31 downto 0),
      AP_AXIMM_1_WLAST => encrypt_1_m_axi_buf_r_WLAST,
      AP_AXIMM_1_WREADY => encrypt_1_m_axi_buf_r_WREADY,
      AP_AXIMM_1_WSTRB(3 downto 0) => encrypt_1_m_axi_buf_r_WSTRB(3 downto 0),
      AP_AXIMM_1_WVALID => encrypt_1_m_axi_buf_r_WVALID,
      M_AXIMM_0_ARADDR(31 downto 0) => encrypt_1_if_M_AXIMM_0_ARADDR(31 downto 0),
      M_AXIMM_0_ARBURST(1 downto 0) => encrypt_1_if_M_AXIMM_0_ARBURST(1 downto 0),
      M_AXIMM_0_ARCACHE(3 downto 0) => NLW_encrypt_1_if_M_AXIMM_0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXIMM_0_ARLEN(7 downto 0) => encrypt_1_if_M_AXIMM_0_ARLEN(7 downto 0),
      M_AXIMM_0_ARLOCK(1 downto 0) => encrypt_1_if_M_AXIMM_0_ARLOCK(1 downto 0),
      M_AXIMM_0_ARPROT(2 downto 0) => encrypt_1_if_M_AXIMM_0_ARPROT(2 downto 0),
      M_AXIMM_0_ARQOS(3 downto 0) => encrypt_1_if_M_AXIMM_0_ARQOS(3 downto 0),
      M_AXIMM_0_ARREADY => encrypt_1_if_M_AXIMM_0_ARREADY,
      M_AXIMM_0_ARREGION(3 downto 0) => encrypt_1_if_M_AXIMM_0_ARREGION(3 downto 0),
      M_AXIMM_0_ARSIZE(2 downto 0) => encrypt_1_if_M_AXIMM_0_ARSIZE(2 downto 0),
      M_AXIMM_0_ARVALID => encrypt_1_if_M_AXIMM_0_ARVALID,
      M_AXIMM_0_AWADDR(31 downto 0) => encrypt_1_if_M_AXIMM_0_AWADDR(31 downto 0),
      M_AXIMM_0_AWBURST(1 downto 0) => encrypt_1_if_M_AXIMM_0_AWBURST(1 downto 0),
      M_AXIMM_0_AWCACHE(3 downto 0) => NLW_encrypt_1_if_M_AXIMM_0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXIMM_0_AWLEN(7 downto 0) => encrypt_1_if_M_AXIMM_0_AWLEN(7 downto 0),
      M_AXIMM_0_AWLOCK(1 downto 0) => encrypt_1_if_M_AXIMM_0_AWLOCK(1 downto 0),
      M_AXIMM_0_AWPROT(2 downto 0) => encrypt_1_if_M_AXIMM_0_AWPROT(2 downto 0),
      M_AXIMM_0_AWQOS(3 downto 0) => encrypt_1_if_M_AXIMM_0_AWQOS(3 downto 0),
      M_AXIMM_0_AWREADY => encrypt_1_if_M_AXIMM_0_AWREADY,
      M_AXIMM_0_AWREGION(3 downto 0) => encrypt_1_if_M_AXIMM_0_AWREGION(3 downto 0),
      M_AXIMM_0_AWSIZE(2 downto 0) => encrypt_1_if_M_AXIMM_0_AWSIZE(2 downto 0),
      M_AXIMM_0_AWVALID => encrypt_1_if_M_AXIMM_0_AWVALID,
      M_AXIMM_0_BREADY => encrypt_1_if_M_AXIMM_0_BREADY,
      M_AXIMM_0_BRESP(1 downto 0) => encrypt_1_if_M_AXIMM_0_BRESP(1 downto 0),
      M_AXIMM_0_BVALID => encrypt_1_if_M_AXIMM_0_BVALID,
      M_AXIMM_0_RDATA(1023 downto 0) => encrypt_1_if_M_AXIMM_0_RDATA(1023 downto 0),
      M_AXIMM_0_RLAST => encrypt_1_if_M_AXIMM_0_RLAST,
      M_AXIMM_0_RREADY => encrypt_1_if_M_AXIMM_0_RREADY,
      M_AXIMM_0_RRESP(1 downto 0) => encrypt_1_if_M_AXIMM_0_RRESP(1 downto 0),
      M_AXIMM_0_RVALID => encrypt_1_if_M_AXIMM_0_RVALID,
      M_AXIMM_0_WDATA(1023 downto 0) => encrypt_1_if_M_AXIMM_0_WDATA(1023 downto 0),
      M_AXIMM_0_WLAST => encrypt_1_if_M_AXIMM_0_WLAST,
      M_AXIMM_0_WREADY => encrypt_1_if_M_AXIMM_0_WREADY,
      M_AXIMM_0_WSTRB(127 downto 0) => encrypt_1_if_M_AXIMM_0_WSTRB(127 downto 0),
      M_AXIMM_0_WVALID => encrypt_1_if_M_AXIMM_0_WVALID,
      M_AXIMM_1_ARADDR(31 downto 0) => encrypt_1_if_M_AXIMM_1_ARADDR(31 downto 0),
      M_AXIMM_1_ARBURST(1 downto 0) => encrypt_1_if_M_AXIMM_1_ARBURST(1 downto 0),
      M_AXIMM_1_ARCACHE(3 downto 0) => NLW_encrypt_1_if_M_AXIMM_1_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXIMM_1_ARLEN(7 downto 0) => encrypt_1_if_M_AXIMM_1_ARLEN(7 downto 0),
      M_AXIMM_1_ARLOCK(1 downto 0) => encrypt_1_if_M_AXIMM_1_ARLOCK(1 downto 0),
      M_AXIMM_1_ARPROT(2 downto 0) => encrypt_1_if_M_AXIMM_1_ARPROT(2 downto 0),
      M_AXIMM_1_ARQOS(3 downto 0) => encrypt_1_if_M_AXIMM_1_ARQOS(3 downto 0),
      M_AXIMM_1_ARREADY => encrypt_1_if_M_AXIMM_1_ARREADY,
      M_AXIMM_1_ARREGION(3 downto 0) => encrypt_1_if_M_AXIMM_1_ARREGION(3 downto 0),
      M_AXIMM_1_ARSIZE(2 downto 0) => encrypt_1_if_M_AXIMM_1_ARSIZE(2 downto 0),
      M_AXIMM_1_ARVALID => encrypt_1_if_M_AXIMM_1_ARVALID,
      M_AXIMM_1_AWADDR(31 downto 0) => encrypt_1_if_M_AXIMM_1_AWADDR(31 downto 0),
      M_AXIMM_1_AWBURST(1 downto 0) => encrypt_1_if_M_AXIMM_1_AWBURST(1 downto 0),
      M_AXIMM_1_AWCACHE(3 downto 0) => NLW_encrypt_1_if_M_AXIMM_1_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXIMM_1_AWLEN(7 downto 0) => encrypt_1_if_M_AXIMM_1_AWLEN(7 downto 0),
      M_AXIMM_1_AWLOCK(1 downto 0) => encrypt_1_if_M_AXIMM_1_AWLOCK(1 downto 0),
      M_AXIMM_1_AWPROT(2 downto 0) => encrypt_1_if_M_AXIMM_1_AWPROT(2 downto 0),
      M_AXIMM_1_AWQOS(3 downto 0) => encrypt_1_if_M_AXIMM_1_AWQOS(3 downto 0),
      M_AXIMM_1_AWREADY => encrypt_1_if_M_AXIMM_1_AWREADY,
      M_AXIMM_1_AWREGION(3 downto 0) => encrypt_1_if_M_AXIMM_1_AWREGION(3 downto 0),
      M_AXIMM_1_AWSIZE(2 downto 0) => encrypt_1_if_M_AXIMM_1_AWSIZE(2 downto 0),
      M_AXIMM_1_AWVALID => encrypt_1_if_M_AXIMM_1_AWVALID,
      M_AXIMM_1_BREADY => encrypt_1_if_M_AXIMM_1_BREADY,
      M_AXIMM_1_BRESP(1 downto 0) => encrypt_1_if_M_AXIMM_1_BRESP(1 downto 0),
      M_AXIMM_1_BVALID => encrypt_1_if_M_AXIMM_1_BVALID,
      M_AXIMM_1_RDATA(31 downto 0) => encrypt_1_if_M_AXIMM_1_RDATA(31 downto 0),
      M_AXIMM_1_RLAST => encrypt_1_if_M_AXIMM_1_RLAST,
      M_AXIMM_1_RREADY => encrypt_1_if_M_AXIMM_1_RREADY,
      M_AXIMM_1_RRESP(1 downto 0) => encrypt_1_if_M_AXIMM_1_RRESP(1 downto 0),
      M_AXIMM_1_RVALID => encrypt_1_if_M_AXIMM_1_RVALID,
      M_AXIMM_1_WDATA(31 downto 0) => encrypt_1_if_M_AXIMM_1_WDATA(31 downto 0),
      M_AXIMM_1_WLAST => encrypt_1_if_M_AXIMM_1_WLAST,
      M_AXIMM_1_WREADY => encrypt_1_if_M_AXIMM_1_WREADY,
      M_AXIMM_1_WSTRB(3 downto 0) => encrypt_1_if_M_AXIMM_1_WSTRB(3 downto 0),
      M_AXIMM_1_WVALID => encrypt_1_if_M_AXIMM_1_WVALID,
      S_AXI_ARADDR(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ARPROT(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARREADY,
      S_AXI_ARVALID => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_ARVALID,
      S_AXI_AWADDR(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_AWPROT(2 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWREADY,
      S_AXI_AWVALID => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_AWVALID,
      S_AXI_BREADY => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_ic_processing_system7_0_M_AXI_GP0_M00_AXI_WVALID,
      acc_aclk => processing_system7_0_FCLK_CLK0,
      acc_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      ap_bram_iarg_0_addr0(4 downto 0) => encrypt_1_k_PORTA_ADDR(4 downto 0),
      ap_bram_iarg_0_clk0 => encrypt_1_k_PORTA_CLK,
      ap_bram_iarg_0_din0(7 downto 0) => encrypt_1_k_PORTA_DIN(7 downto 0),
      ap_bram_iarg_0_dout0(7 downto 0) => encrypt_1_k_PORTA_DOUT(7 downto 0),
      ap_bram_iarg_0_en0 => encrypt_1_k_PORTA_EN,
      ap_bram_iarg_0_rst0 => encrypt_1_k_PORTA_RST,
      ap_bram_iarg_0_we0(0) => encrypt_1_k_PORTA_WE(0),
      ap_clk => encrypt_1_if_ap_clk,
      ap_continue => NLW_encrypt_1_if_ap_continue_UNCONNECTED,
      ap_done => encrypt_1_if_ap_ctrl_done,
      ap_idle => encrypt_1_if_ap_ctrl_idle,
      ap_iscalar_0_dout(31 downto 0) => encrypt_1_if_ap_iscalar_0_dout(31 downto 0),
      ap_iscalar_1_dout(31 downto 0) => encrypt_1_if_ap_iscalar_1_dout(31 downto 0),
      ap_ready => encrypt_1_if_ap_ctrl_ready,
      ap_resetn => encrypt_1_if_ap_resetn,
      ap_start => encrypt_1_if_ap_ctrl_start,
      s_axi_aclk => processing_system7_0_FCLK_CLK3,
      s_axi_aresetn => proc_sys_reset_3_peripheral_aresetn(0),
      s_axis_bram_0_aclk => processing_system7_0_FCLK_CLK3,
      s_axis_bram_0_aresetn => proc_sys_reset_3_peripheral_aresetn(0),
      s_axis_bram_0_tdata(63 downto 0) => dm_0_M_AXIS_MM2S_TDATA(63 downto 0),
      s_axis_bram_0_tkeep(7 downto 0) => dm_0_M_AXIS_MM2S_TKEEP(7 downto 0),
      s_axis_bram_0_tlast => dm_0_M_AXIS_MM2S_TLAST,
      s_axis_bram_0_tready => dm_0_M_AXIS_MM2S_TREADY,
      s_axis_bram_0_tstrb(7 downto 0) => B"00000001",
      s_axis_bram_0_tvalid => dm_0_M_AXIS_MM2S_TVALID
    );
proc_sys_reset_0: component pynq_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
proc_sys_reset_1: component pynq_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
proc_sys_reset_2: component pynq_proc_sys_reset_2_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_2_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK2
    );
proc_sys_reset_3: component pynq_proc_sys_reset_3_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_3_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_3_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_3_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_3_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_3_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK3
    );
processing_system7_0: component pynq_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK2,
      FCLK_CLK3 => processing_system7_0_FCLK_CLK3,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(15 downto 0) => xlconcat_0_dout(15 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK3,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_ACP_ACLK => processing_system7_0_FCLK_CLK3,
      S_AXI_ACP_ARADDR(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ACP_ARBURST(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARBURST(1 downto 0),
      S_AXI_ACP_ARCACHE(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_ACP_ARID(2 downto 0) => B"000",
      S_AXI_ACP_ARLEN(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLEN(3 downto 0),
      S_AXI_ACP_ARLOCK(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_ACP_ARPROT(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ACP_ARQOS(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARQOS(3 downto 0),
      S_AXI_ACP_ARREADY => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARREADY,
      S_AXI_ACP_ARSIZE(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_ACP_ARUSER(4 downto 0) => B"00000",
      S_AXI_ACP_ARVALID => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_ARVALID,
      S_AXI_ACP_AWADDR(31 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWADDR(31 downto 0),
      S_AXI_ACP_AWBURST(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWBURST(1 downto 0),
      S_AXI_ACP_AWCACHE(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_ACP_AWID(2 downto 0) => B"000",
      S_AXI_ACP_AWLEN(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLEN(3 downto 0),
      S_AXI_ACP_AWLOCK(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_ACP_AWPROT(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWPROT(2 downto 0),
      S_AXI_ACP_AWQOS(3 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWQOS(3 downto 0),
      S_AXI_ACP_AWREADY => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWREADY,
      S_AXI_ACP_AWSIZE(2 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_ACP_AWUSER(4 downto 0) => B"00000",
      S_AXI_ACP_AWVALID => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_AWVALID,
      S_AXI_ACP_BID(2 downto 0) => NLW_processing_system7_0_S_AXI_ACP_BID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_BREADY => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BREADY,
      S_AXI_ACP_BRESP(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BRESP(1 downto 0),
      S_AXI_ACP_BVALID => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_BVALID,
      S_AXI_ACP_RDATA(63 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RDATA(63 downto 0),
      S_AXI_ACP_RID(2 downto 0) => NLW_processing_system7_0_S_AXI_ACP_RID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_RLAST => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RLAST,
      S_AXI_ACP_RREADY => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RREADY,
      S_AXI_ACP_RRESP(1 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RRESP(1 downto 0),
      S_AXI_ACP_RVALID => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_RVALID,
      S_AXI_ACP_WDATA(63 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WDATA(63 downto 0),
      S_AXI_ACP_WID(2 downto 0) => B"000",
      S_AXI_ACP_WLAST => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WLAST,
      S_AXI_ACP_WREADY => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WREADY,
      S_AXI_ACP_WSTRB(7 downto 0) => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WSTRB(7 downto 0),
      S_AXI_ACP_WVALID => axi_ic_processing_system7_0_S_AXI_ACP_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
sds_irq_const: component pynq_sds_irq_const_0
     port map (
      dout(0) => sds_irq_const_dout(0)
    );
xlconcat_0: component pynq_xlconcat_0_0
     port map (
      In0(0) => sds_irq_const_dout(0),
      In1(0) => sds_irq_const_dout(0),
      In10(0) => sds_irq_const_dout(0),
      In11(0) => sds_irq_const_dout(0),
      In12(0) => sds_irq_const_dout(0),
      In13(0) => sds_irq_const_dout(0),
      In14(0) => sds_irq_const_dout(0),
      In15(0) => sds_irq_const_dout(0),
      In2(0) => sds_irq_const_dout(0),
      In3(0) => sds_irq_const_dout(0),
      In4(0) => sds_irq_const_dout(0),
      In5(0) => sds_irq_const_dout(0),
      In6(0) => sds_irq_const_dout(0),
      In7(0) => sds_irq_const_dout(0),
      In8(0) => sds_irq_const_dout(0),
      In9(0) => sds_irq_const_dout(0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
end STRUCTURE;
