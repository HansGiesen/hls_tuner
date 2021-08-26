-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cholesky_top is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    L_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    L_ce0 : OUT STD_LOGIC;
    L_we0 : OUT STD_LOGIC;
    L_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of cholesky_top is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "cholesky_top,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.556000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=30,HLS_SYN_DSP=16,HLS_SYN_FF=5820,HLS_SYN_LUT=14128,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv7_42 : STD_LOGIC_VECTOR (6 downto 0) := "1000010";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal r_fu_181_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_reg_324 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln47_fu_211_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln47_reg_329 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln45_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_fu_223_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal c_reg_337 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln47_3_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln47_3_reg_342 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln46_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_255_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_1_reg_358 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal add_ln60_fu_285_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln60_reg_363 : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln58_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_1_fu_297_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal c_1_reg_371 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal zext_ln60_3_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_3_reg_376 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln59_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_i_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal a_i_ce0 : STD_LOGIC;
    signal a_i_we0 : STD_LOGIC;
    signal a_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal L_assign_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal L_assign_ce0 : STD_LOGIC;
    signal L_assign_we0 : STD_LOGIC;
    signal L_assign_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_cholesky_alt_fu_169_ap_start : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_ap_done : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_ap_idle : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_ap_ready : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_A_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_cholesky_alt_fu_169_A_ce0 : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_L_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_cholesky_alt_fu_169_L_ce0 : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_L_we0 : STD_LOGIC;
    signal grp_cholesky_alt_fu_169_L_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_cholesky_alt_fu_169_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal r_0_reg_112 : STD_LOGIC_VECTOR (6 downto 0);
    signal c_0_reg_123 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal r1_0_reg_134 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln52_fu_243_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_0_reg_145 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal p_0_reg_156 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_cholesky_alt_fu_169_ap_start_reg : STD_LOGIC := '0';
    signal tmp_fu_187_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_1_fu_199_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln47_1_fu_207_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln47_fu_195_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln47_2_fu_229_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln47_1_fu_233_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_2_fu_261_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_3_fu_273_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln60_1_fu_281_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln60_fu_269_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln60_2_fu_303_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln60_1_fu_307_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component cholesky_alt IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        A_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        A_ce0 : OUT STD_LOGIC;
        A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        L_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        L_ce0 : OUT STD_LOGIC;
        L_we0 : OUT STD_LOGIC;
        L_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component cholesky_top_a_i IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (12 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    a_i_U : component cholesky_top_a_i
    generic map (
        DataWidth => 32,
        AddressRange => 4356,
        AddressWidth => 13)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => a_i_address0,
        ce0 => a_i_ce0,
        we0 => a_i_we0,
        d0 => A_q0,
        q0 => a_i_q0);

    L_assign_U : component cholesky_top_a_i
    generic map (
        DataWidth => 32,
        AddressRange => 4356,
        AddressWidth => 13)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => L_assign_address0,
        ce0 => L_assign_ce0,
        we0 => L_assign_we0,
        d0 => grp_cholesky_alt_fu_169_L_d0,
        q0 => L_assign_q0);

    grp_cholesky_alt_fu_169 : component cholesky_alt
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_cholesky_alt_fu_169_ap_start,
        ap_done => grp_cholesky_alt_fu_169_ap_done,
        ap_idle => grp_cholesky_alt_fu_169_ap_idle,
        ap_ready => grp_cholesky_alt_fu_169_ap_ready,
        A_address0 => grp_cholesky_alt_fu_169_A_address0,
        A_ce0 => grp_cholesky_alt_fu_169_A_ce0,
        A_q0 => a_i_q0,
        L_address0 => grp_cholesky_alt_fu_169_L_address0,
        L_ce0 => grp_cholesky_alt_fu_169_L_ce0,
        L_we0 => grp_cholesky_alt_fu_169_L_we0,
        L_d0 => grp_cholesky_alt_fu_169_L_d0,
        ap_return => grp_cholesky_alt_fu_169_ap_return);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_cholesky_alt_fu_169_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_cholesky_alt_fu_169_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln45_fu_175_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_cholesky_alt_fu_169_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_cholesky_alt_fu_169_ap_ready = ap_const_logic_1)) then 
                    grp_cholesky_alt_fu_169_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c2_0_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                c2_0_reg_145 <= c_1_reg_371;
            elsif (((icmp_ln58_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                c2_0_reg_145 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    c_0_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                c_0_reg_123 <= c_reg_337;
            elsif (((icmp_ln45_fu_175_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c_0_reg_123 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    p_0_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln58_fu_249_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_0_reg_156 <= ap_const_lv1_0;
            elsif (((icmp_ln52_fu_243_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5) and (grp_cholesky_alt_fu_169_ap_done = ap_const_logic_1))) then 
                p_0_reg_156 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    r1_0_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln52_fu_243_p2 = ap_const_lv1_1) and (grp_cholesky_alt_fu_169_ap_done = ap_const_logic_1))) then 
                r1_0_reg_134 <= ap_const_lv7_0;
            elsif (((icmp_ln59_fu_291_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                r1_0_reg_134 <= r_1_reg_358;
            end if; 
        end if;
    end process;

    r_0_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln46_fu_217_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                r_0_reg_112 <= r_reg_324;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                r_0_reg_112 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln45_fu_175_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    add_ln47_reg_329(13 downto 1) <= add_ln47_fu_211_p2(13 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln58_fu_249_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    add_ln60_reg_363(13 downto 1) <= add_ln60_fu_285_p2(13 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                c_1_reg_371 <= c_1_fu_297_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                c_reg_337 <= c_fu_223_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                r_1_reg_358 <= r_1_fu_255_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_reg_324 <= r_fu_181_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln46_fu_217_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    zext_ln47_3_reg_342(13 downto 0) <= zext_ln47_3_fu_238_p1(13 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln59_fu_291_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    zext_ln60_3_reg_376(13 downto 0) <= zext_ln60_3_fu_312_p1(13 downto 0);
            end if;
        end if;
    end process;
    add_ln47_reg_329(0) <= '0';
    zext_ln47_3_reg_342(63 downto 14) <= "00000000000000000000000000000000000000000000000000";
    add_ln60_reg_363(0) <= '0';
    zext_ln60_3_reg_376(63 downto 14) <= "00000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln45_fu_175_p2, ap_CS_fsm_state3, icmp_ln46_fu_217_p2, ap_CS_fsm_state6, icmp_ln58_fu_249_p2, ap_CS_fsm_state7, icmp_ln59_fu_291_p2, grp_cholesky_alt_fu_169_ap_done, ap_CS_fsm_state5, icmp_ln52_fu_243_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln45_fu_175_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln46_fu_217_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln52_fu_243_p2 = ap_const_lv1_1) and (grp_cholesky_alt_fu_169_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((icmp_ln52_fu_243_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5) and (grp_cholesky_alt_fu_169_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((icmp_ln58_fu_249_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((icmp_ln59_fu_291_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    A_address0 <= zext_ln47_3_fu_238_p1(13 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    L_address0 <= zext_ln60_3_reg_376(13 - 1 downto 0);

    L_assign_address0_assign_proc : process(ap_CS_fsm_state7, zext_ln60_3_fu_312_p1, grp_cholesky_alt_fu_169_L_address0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            L_assign_address0 <= zext_ln60_3_fu_312_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            L_assign_address0 <= grp_cholesky_alt_fu_169_L_address0;
        else 
            L_assign_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    L_assign_ce0_assign_proc : process(ap_CS_fsm_state7, grp_cholesky_alt_fu_169_L_ce0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            L_assign_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            L_assign_ce0 <= grp_cholesky_alt_fu_169_L_ce0;
        else 
            L_assign_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    L_assign_we0_assign_proc : process(grp_cholesky_alt_fu_169_L_we0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            L_assign_we0 <= grp_cholesky_alt_fu_169_L_we0;
        else 
            L_assign_we0 <= ap_const_logic_0;
        end if; 
    end process;


    L_ce0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            L_ce0 <= ap_const_logic_1;
        else 
            L_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    L_d0 <= L_assign_q0;

    L_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            L_we0 <= ap_const_logic_1;
        else 
            L_we0 <= ap_const_logic_0;
        end if; 
    end process;


    a_i_address0_assign_proc : process(zext_ln47_3_reg_342, grp_cholesky_alt_fu_169_A_address0, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_i_address0 <= zext_ln47_3_reg_342(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_i_address0 <= grp_cholesky_alt_fu_169_A_address0;
        else 
            a_i_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    a_i_ce0_assign_proc : process(grp_cholesky_alt_fu_169_A_ce0, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_i_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            a_i_ce0 <= grp_cholesky_alt_fu_169_A_ce0;
        else 
            a_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    a_i_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            a_i_we0 <= ap_const_logic_1;
        else 
            a_i_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln47_1_fu_233_p2 <= std_logic_vector(unsigned(add_ln47_reg_329) + unsigned(zext_ln47_2_fu_229_p1));
    add_ln47_fu_211_p2 <= std_logic_vector(unsigned(zext_ln47_1_fu_207_p1) + unsigned(zext_ln47_fu_195_p1));
    add_ln60_1_fu_307_p2 <= std_logic_vector(unsigned(add_ln60_reg_363) + unsigned(zext_ln60_2_fu_303_p1));
    add_ln60_fu_285_p2 <= std_logic_vector(unsigned(zext_ln60_1_fu_281_p1) + unsigned(zext_ln60_fu_269_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_0_reg_156),32));
    c_1_fu_297_p2 <= std_logic_vector(unsigned(c2_0_reg_145) + unsigned(ap_const_lv7_1));
    c_fu_223_p2 <= std_logic_vector(unsigned(c_0_reg_123) + unsigned(ap_const_lv7_1));
    grp_cholesky_alt_fu_169_ap_start <= grp_cholesky_alt_fu_169_ap_start_reg;
    icmp_ln45_fu_175_p2 <= "1" when (r_0_reg_112 = ap_const_lv7_42) else "0";
    icmp_ln46_fu_217_p2 <= "1" when (c_0_reg_123 = ap_const_lv7_42) else "0";
    icmp_ln52_fu_243_p2 <= "1" when (grp_cholesky_alt_fu_169_ap_return = ap_const_lv32_0) else "0";
    icmp_ln58_fu_249_p2 <= "1" when (r1_0_reg_134 = ap_const_lv7_42) else "0";
    icmp_ln59_fu_291_p2 <= "1" when (c2_0_reg_145 = ap_const_lv7_42) else "0";
    r_1_fu_255_p2 <= std_logic_vector(unsigned(r1_0_reg_134) + unsigned(ap_const_lv7_1));
    r_fu_181_p2 <= std_logic_vector(unsigned(r_0_reg_112) + unsigned(ap_const_lv7_1));
    tmp_1_fu_199_p3 <= (r_0_reg_112 & ap_const_lv1_0);
    tmp_2_fu_261_p3 <= (r1_0_reg_134 & ap_const_lv6_0);
    tmp_3_fu_273_p3 <= (r1_0_reg_134 & ap_const_lv1_0);
    tmp_fu_187_p3 <= (r_0_reg_112 & ap_const_lv6_0);
    zext_ln47_1_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_199_p3),14));
    zext_ln47_2_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_0_reg_123),14));
    zext_ln47_3_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln47_1_fu_233_p2),64));
    zext_ln47_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_187_p3),14));
    zext_ln60_1_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_273_p3),14));
    zext_ln60_2_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c2_0_reg_145),14));
    zext_ln60_3_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_1_fu_307_p2),64));
    zext_ln60_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_261_p3),14));
end behav;