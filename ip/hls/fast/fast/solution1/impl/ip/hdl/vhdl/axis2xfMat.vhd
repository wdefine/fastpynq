-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axis2xfMat is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    src_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    src_TVALID : IN STD_LOGIC;
    src_TREADY : OUT STD_LOGIC;
    p_src_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_src_data_V_full_n : IN STD_LOGIC;
    p_src_data_V_write : OUT STD_LOGIC;
    src_rows_cast1_loc_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    src_rows_cast1_loc_empty_n : IN STD_LOGIC;
    src_rows_cast1_loc_read : OUT STD_LOGIC;
    src_cols_cast2_loc_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    src_cols_cast2_loc_empty_n : IN STD_LOGIC;
    src_cols_cast2_loc_read : OUT STD_LOGIC;
    src_rows_cast1_loc_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    src_rows_cast1_loc_out_full_n : IN STD_LOGIC;
    src_rows_cast1_loc_out_write : OUT STD_LOGIC;
    src_cols_cast2_loc_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    src_cols_cast2_loc_out_full_n : IN STD_LOGIC;
    src_cols_cast2_loc_out_write : OUT STD_LOGIC );
end;


architecture behav of axis2xfMat is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal src_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln10_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_src_data_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal icmp_ln10_reg_168 : STD_LOGIC_VECTOR (0 downto 0);
    signal src_rows_cast1_loc_blk_n : STD_LOGIC;
    signal src_cols_cast2_loc_blk_n : STD_LOGIC;
    signal src_rows_cast1_loc_out_blk_n : STD_LOGIC;
    signal src_cols_cast2_loc_out_blk_n : STD_LOGIC;
    signal j_0_i_i_reg_112 : STD_LOGIC_VECTOR (11 downto 0);
    signal src_rows_cast1_loc_r_reg_149 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal src_cols_cast2_loc_r_reg_154 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln9_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_128_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_reg_163 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_139_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln209_fu_145_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln209_reg_177 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_0_i_i_reg_101 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_src_data_V_U_apdone_blk : STD_LOGIC;
    signal src_TDATA_int : STD_LOGIC_VECTOR (23 downto 0);
    signal src_TVALID_int : STD_LOGIC;
    signal src_TREADY_int : STD_LOGIC;
    signal regslice_both_src_data_V_U_ack_in : STD_LOGIC;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_src_data_V_U : component regslice_both
    generic map (
        DataWidth => 24)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => src_TDATA,
        vld_in => src_TVALID,
        ack_in => regslice_both_src_data_V_U_ack_in,
        data_out => src_TDATA_int,
        vld_out => src_TVALID_int,
        ack_out => src_TREADY_int,
        apdone_blk => regslice_both_src_data_V_U_apdone_blk);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln9_fu_123_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln9_fu_123_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((icmp_ln9_fu_123_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_0_i_i_reg_101 <= i_reg_163;
            elsif ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_101 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    j_0_i_i_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln9_fu_123_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_i_i_reg_112 <= ap_const_lv12_0;
            elsif (((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_0_i_i_reg_112 <= j_fu_139_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_163 <= i_fu_128_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln10_reg_168 <= icmp_ln10_fu_134_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                src_cols_cast2_loc_r_reg_154 <= src_cols_cast2_loc_dout;
                src_rows_cast1_loc_r_reg_149 <= src_rows_cast1_loc_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                trunc_ln209_reg_177 <= trunc_ln209_fu_145_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_134_p2, icmp_ln9_fu_123_p2, ap_CS_fsm_state2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln9_fu_123_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln10_fu_134_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln10_fu_134_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(p_src_data_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_134_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_168, src_TVALID_int)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln10_reg_168 = ap_const_lv1_0) and (p_src_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (src_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(p_src_data_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_134_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_168, src_TVALID_int)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln10_reg_168 = ap_const_lv1_0) and (p_src_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (src_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(p_src_data_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_134_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_168, src_TVALID_int)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln10_reg_168 = ap_const_lv1_0) and (p_src_data_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (src_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n)
    begin
                ap_block_state1 <= ((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_pp0_stage0_iter0_assign_proc : process(icmp_ln10_fu_134_p2, src_TVALID_int)
    begin
                ap_block_state3_pp0_stage0_iter0 <= ((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (src_TVALID_int = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage0_iter1_assign_proc : process(p_src_data_V_full_n, icmp_ln10_reg_168)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((icmp_ln10_reg_168 = ap_const_lv1_0) and (p_src_data_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln10_fu_134_p2)
    begin
        if ((icmp_ln10_fu_134_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln9_fu_123_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln9_fu_123_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    i_fu_128_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_101) + unsigned(ap_const_lv12_1));
    icmp_ln10_fu_134_p2 <= "1" when (j_0_i_i_reg_112 = src_cols_cast2_loc_r_reg_154) else "0";
    icmp_ln9_fu_123_p2 <= "1" when (i_0_i_i_reg_101 = src_rows_cast1_loc_r_reg_149) else "0";

    internal_ap_ready_assign_proc : process(icmp_ln9_fu_123_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln9_fu_123_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_fu_139_p2 <= std_logic_vector(unsigned(j_0_i_i_reg_112) + unsigned(ap_const_lv12_1));

    p_src_data_V_blk_n_assign_proc : process(p_src_data_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln10_reg_168)
    begin
        if (((icmp_ln10_reg_168 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_src_data_V_blk_n <= p_src_data_V_full_n;
        else 
            p_src_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_src_data_V_din <= trunc_ln209_reg_177;

    p_src_data_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln10_reg_168, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln10_reg_168 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_src_data_V_write <= ap_const_logic_1;
        else 
            p_src_data_V_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    src_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln10_fu_134_p2, src_TVALID_int)
    begin
        if (((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_TDATA_blk_n <= src_TVALID_int;
        else 
            src_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_TREADY_assign_proc : process(src_TVALID, regslice_both_src_data_V_U_ack_in)
    begin
        if (((src_TVALID = ap_const_logic_1) and (regslice_both_src_data_V_U_ack_in = ap_const_logic_1))) then 
            src_TREADY <= ap_const_logic_1;
        else 
            src_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    src_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln10_fu_134_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln10_fu_134_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            src_TREADY_int <= ap_const_logic_1;
        else 
            src_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    src_cols_cast2_loc_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_cols_cast2_loc_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_cols_cast2_loc_blk_n <= src_cols_cast2_loc_empty_n;
        else 
            src_cols_cast2_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_cols_cast2_loc_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_cols_cast2_loc_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_cols_cast2_loc_out_blk_n <= src_cols_cast2_loc_out_full_n;
        else 
            src_cols_cast2_loc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    src_cols_cast2_loc_out_din <= src_cols_cast2_loc_dout;

    src_cols_cast2_loc_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n)
    begin
        if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_cols_cast2_loc_out_write <= ap_const_logic_1;
        else 
            src_cols_cast2_loc_out_write <= ap_const_logic_0;
        end if; 
    end process;


    src_cols_cast2_loc_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n)
    begin
        if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_cols_cast2_loc_read <= ap_const_logic_1;
        else 
            src_cols_cast2_loc_read <= ap_const_logic_0;
        end if; 
    end process;


    src_rows_cast1_loc_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_rows_cast1_loc_blk_n <= src_rows_cast1_loc_empty_n;
        else 
            src_rows_cast1_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_rows_cast1_loc_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_rows_cast1_loc_out_blk_n <= src_rows_cast1_loc_out_full_n;
        else 
            src_rows_cast1_loc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    src_rows_cast1_loc_out_din <= src_rows_cast1_loc_dout;

    src_rows_cast1_loc_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n)
    begin
        if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_rows_cast1_loc_out_write <= ap_const_logic_1;
        else 
            src_rows_cast1_loc_out_write <= ap_const_logic_0;
        end if; 
    end process;


    src_rows_cast1_loc_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, src_rows_cast1_loc_empty_n, src_cols_cast2_loc_empty_n, src_rows_cast1_loc_out_full_n, src_cols_cast2_loc_out_full_n)
    begin
        if ((not(((src_cols_cast2_loc_out_full_n = ap_const_logic_0) or (src_rows_cast1_loc_out_full_n = ap_const_logic_0) or (src_cols_cast2_loc_empty_n = ap_const_logic_0) or (src_rows_cast1_loc_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            src_rows_cast1_loc_read <= ap_const_logic_1;
        else 
            src_rows_cast1_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln209_fu_145_p1 <= src_TDATA_int(8 - 1 downto 0);
end behav;
