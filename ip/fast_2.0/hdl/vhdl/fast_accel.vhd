-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fast_accel is
generic (
    C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_AXILITES_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH/8-1 downto 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    src_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    src_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    dst_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    dst_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_start : IN STD_LOGIC;
    src_TVALID : IN STD_LOGIC;
    src_TREADY : OUT STD_LOGIC;
    dst_TVALID : OUT STD_LOGIC;
    dst_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of fast_accel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fast_accel,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.117000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=21,HLS_SYN_DSP=0,HLS_SYN_FF=6346,HLS_SYN_LUT=6999,HLS_VERSION=2019_2}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_S_AXI_WSTRB_WIDTH : INTEGER range 63 downto 0 := 4;
    constant C_S_AXI_ADDR_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal src_rows : STD_LOGIC_VECTOR (31 downto 0);
    signal src_cols : STD_LOGIC_VECTOR (31 downto 0);
    signal threshold : STD_LOGIC_VECTOR (31 downto 0);
    signal unused : STD_LOGIC_VECTOR (31 downto 0);
    signal Block_Mat_exit73_pro_U0_ap_start : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_ap_done : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_ap_continue : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_ap_idle : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_ap_ready : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_start_out : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_start_write : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_src_mat_rows_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Block_Mat_exit73_pro_U0_src_mat_rows_out_write : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_src_mat_cols_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Block_Mat_exit73_pro_U0_src_mat_cols_out_write : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_write : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_write : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_threshold_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Block_Mat_exit73_pro_U0_threshold_out_write : STD_LOGIC;
    signal axis2xfMat_U0_ap_start : STD_LOGIC;
    signal axis2xfMat_U0_ap_done : STD_LOGIC;
    signal axis2xfMat_U0_ap_continue : STD_LOGIC;
    signal axis2xfMat_U0_ap_idle : STD_LOGIC;
    signal axis2xfMat_U0_ap_ready : STD_LOGIC;
    signal axis2xfMat_U0_start_out : STD_LOGIC;
    signal axis2xfMat_U0_start_write : STD_LOGIC;
    signal axis2xfMat_U0_src_TREADY : STD_LOGIC;
    signal axis2xfMat_U0_p_src_data_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal axis2xfMat_U0_p_src_data_V_write : STD_LOGIC;
    signal axis2xfMat_U0_src_rows_cast1_loc_read : STD_LOGIC;
    signal axis2xfMat_U0_src_cols_cast2_loc_read : STD_LOGIC;
    signal axis2xfMat_U0_src_rows_cast1_loc_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal axis2xfMat_U0_src_rows_cast1_loc_out_write : STD_LOGIC;
    signal axis2xfMat_U0_src_cols_cast2_loc_out_din : STD_LOGIC_VECTOR (11 downto 0);
    signal axis2xfMat_U0_src_cols_cast2_loc_out_write : STD_LOGIC;
    signal fast_U0_ap_start : STD_LOGIC;
    signal fast_U0_ap_done : STD_LOGIC;
    signal fast_U0_ap_continue : STD_LOGIC;
    signal fast_U0_ap_idle : STD_LOGIC;
    signal fast_U0_ap_ready : STD_LOGIC;
    signal fast_U0_p_src_mat_rows_read : STD_LOGIC;
    signal fast_U0_p_src_mat_cols_read : STD_LOGIC;
    signal fast_U0_p_src_mat_data_V_read : STD_LOGIC;
    signal fast_U0_p_dst_mat_data_V_din : STD_LOGIC_VECTOR (0 downto 0);
    signal fast_U0_p_dst_mat_data_V_write : STD_LOGIC;
    signal fast_U0_threshold_read : STD_LOGIC;
    signal xfMat2axis_U0_ap_start : STD_LOGIC;
    signal xfMat2axis_U0_ap_done : STD_LOGIC;
    signal xfMat2axis_U0_ap_continue : STD_LOGIC;
    signal xfMat2axis_U0_ap_idle : STD_LOGIC;
    signal xfMat2axis_U0_ap_ready : STD_LOGIC;
    signal xfMat2axis_U0_p_dst_data_V_read : STD_LOGIC;
    signal xfMat2axis_U0_dst_TDATA : STD_LOGIC_VECTOR (23 downto 0);
    signal xfMat2axis_U0_dst_TVALID : STD_LOGIC;
    signal xfMat2axis_U0_dst_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal xfMat2axis_U0_src_rows_cast1_loc_read : STD_LOGIC;
    signal xfMat2axis_U0_src_cols_cast2_loc_read : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal src_mat_rows_c_full_n : STD_LOGIC;
    signal src_mat_rows_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal src_mat_rows_c_empty_n : STD_LOGIC;
    signal src_mat_cols_c_full_n : STD_LOGIC;
    signal src_mat_cols_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal src_mat_cols_c_empty_n : STD_LOGIC;
    signal src_rows_cast1_loc_c_full_n : STD_LOGIC;
    signal src_rows_cast1_loc_c_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal src_rows_cast1_loc_c_empty_n : STD_LOGIC;
    signal src_cols_cast2_loc_c_full_n : STD_LOGIC;
    signal src_cols_cast2_loc_c_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal src_cols_cast2_loc_c_empty_n : STD_LOGIC;
    signal threshold_c_full_n : STD_LOGIC;
    signal threshold_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal threshold_c_empty_n : STD_LOGIC;
    signal src_mat_data_V_full_n : STD_LOGIC;
    signal src_mat_data_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal src_mat_data_V_empty_n : STD_LOGIC;
    signal src_rows_cast1_loc_c_1_full_n : STD_LOGIC;
    signal src_rows_cast1_loc_c_1_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal src_rows_cast1_loc_c_1_empty_n : STD_LOGIC;
    signal src_cols_cast2_loc_c_1_full_n : STD_LOGIC;
    signal src_cols_cast2_loc_c_1_dout : STD_LOGIC_VECTOR (11 downto 0);
    signal src_cols_cast2_loc_c_1_empty_n : STD_LOGIC;
    signal dst_mat_data_V_full_n : STD_LOGIC;
    signal dst_mat_data_V_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal dst_mat_data_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Block_Mat_exit73_pro_U0_ap_ready : STD_LOGIC;
    signal Block_Mat_exit73_pro_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_axis2xfMat_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_axis2xfMat_U0_ap_ready : STD_LOGIC;
    signal axis2xfMat_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal start_for_fast_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fast_U0_full_n : STD_LOGIC;
    signal start_for_fast_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_fast_U0_empty_n : STD_LOGIC;
    signal start_for_xfMat2axis_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfMat2axis_U0_full_n : STD_LOGIC;
    signal start_for_xfMat2axis_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_xfMat2axis_U0_empty_n : STD_LOGIC;
    signal fast_U0_start_full_n : STD_LOGIC;
    signal fast_U0_start_write : STD_LOGIC;
    signal xfMat2axis_U0_start_full_n : STD_LOGIC;
    signal xfMat2axis_U0_start_write : STD_LOGIC;

    component Block_Mat_exit73_pro IS
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
        src_rows : IN STD_LOGIC_VECTOR (31 downto 0);
        src_cols : IN STD_LOGIC_VECTOR (31 downto 0);
        threshold : IN STD_LOGIC_VECTOR (31 downto 0);
        src_mat_rows_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        src_mat_rows_out_full_n : IN STD_LOGIC;
        src_mat_rows_out_write : OUT STD_LOGIC;
        src_mat_cols_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        src_mat_cols_out_full_n : IN STD_LOGIC;
        src_mat_cols_out_write : OUT STD_LOGIC;
        src_rows_cast1_out_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        src_rows_cast1_out_out_full_n : IN STD_LOGIC;
        src_rows_cast1_out_out_write : OUT STD_LOGIC;
        src_cols_cast2_out_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
        src_cols_cast2_out_out_full_n : IN STD_LOGIC;
        src_cols_cast2_out_out_write : OUT STD_LOGIC;
        threshold_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        threshold_out_full_n : IN STD_LOGIC;
        threshold_out_write : OUT STD_LOGIC );
    end component;


    component axis2xfMat IS
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
    end component;


    component fast IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_mat_rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_rows_empty_n : IN STD_LOGIC;
        p_src_mat_rows_read : OUT STD_LOGIC;
        p_src_mat_cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        p_src_mat_cols_empty_n : IN STD_LOGIC;
        p_src_mat_cols_read : OUT STD_LOGIC;
        p_src_mat_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_mat_data_V_empty_n : IN STD_LOGIC;
        p_src_mat_data_V_read : OUT STD_LOGIC;
        p_dst_mat_data_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        p_dst_mat_data_V_full_n : IN STD_LOGIC;
        p_dst_mat_data_V_write : OUT STD_LOGIC;
        threshold_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        threshold_empty_n : IN STD_LOGIC;
        threshold_read : OUT STD_LOGIC );
    end component;


    component xfMat2axis IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_dst_data_V_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        p_dst_data_V_empty_n : IN STD_LOGIC;
        p_dst_data_V_read : OUT STD_LOGIC;
        dst_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        dst_TVALID : OUT STD_LOGIC;
        dst_TREADY : IN STD_LOGIC;
        dst_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        src_rows_cast1_loc_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        src_rows_cast1_loc_empty_n : IN STD_LOGIC;
        src_rows_cast1_loc_read : OUT STD_LOGIC;
        src_cols_cast2_loc_dout : IN STD_LOGIC_VECTOR (11 downto 0);
        src_cols_cast2_loc_empty_n : IN STD_LOGIC;
        src_cols_cast2_loc_read : OUT STD_LOGIC );
    end component;


    component fifo_w32_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w12_d2_A_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (11 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (11 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w8_d150_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w12_d3_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (11 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (11 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w1_d150_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_fast_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_xfMat2aqcK IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fast_accel_AXILiteS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        src_rows : OUT STD_LOGIC_VECTOR (31 downto 0);
        src_cols : OUT STD_LOGIC_VECTOR (31 downto 0);
        threshold : OUT STD_LOGIC_VECTOR (31 downto 0);
        unused : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    fast_accel_AXILiteS_s_axi_U : component fast_accel_AXILiteS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXILITES_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXILITES_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXILiteS_AWVALID,
        AWREADY => s_axi_AXILiteS_AWREADY,
        AWADDR => s_axi_AXILiteS_AWADDR,
        WVALID => s_axi_AXILiteS_WVALID,
        WREADY => s_axi_AXILiteS_WREADY,
        WDATA => s_axi_AXILiteS_WDATA,
        WSTRB => s_axi_AXILiteS_WSTRB,
        ARVALID => s_axi_AXILiteS_ARVALID,
        ARREADY => s_axi_AXILiteS_ARREADY,
        ARADDR => s_axi_AXILiteS_ARADDR,
        RVALID => s_axi_AXILiteS_RVALID,
        RREADY => s_axi_AXILiteS_RREADY,
        RDATA => s_axi_AXILiteS_RDATA,
        RRESP => s_axi_AXILiteS_RRESP,
        BVALID => s_axi_AXILiteS_BVALID,
        BREADY => s_axi_AXILiteS_BREADY,
        BRESP => s_axi_AXILiteS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        src_rows => src_rows,
        src_cols => src_cols,
        threshold => threshold,
        unused => unused);

    Block_Mat_exit73_pro_U0 : component Block_Mat_exit73_pro
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_Mat_exit73_pro_U0_ap_start,
        start_full_n => start_for_fast_U0_full_n,
        ap_done => Block_Mat_exit73_pro_U0_ap_done,
        ap_continue => Block_Mat_exit73_pro_U0_ap_continue,
        ap_idle => Block_Mat_exit73_pro_U0_ap_idle,
        ap_ready => Block_Mat_exit73_pro_U0_ap_ready,
        start_out => Block_Mat_exit73_pro_U0_start_out,
        start_write => Block_Mat_exit73_pro_U0_start_write,
        src_rows => src_rows,
        src_cols => src_cols,
        threshold => threshold,
        src_mat_rows_out_din => Block_Mat_exit73_pro_U0_src_mat_rows_out_din,
        src_mat_rows_out_full_n => src_mat_rows_c_full_n,
        src_mat_rows_out_write => Block_Mat_exit73_pro_U0_src_mat_rows_out_write,
        src_mat_cols_out_din => Block_Mat_exit73_pro_U0_src_mat_cols_out_din,
        src_mat_cols_out_full_n => src_mat_cols_c_full_n,
        src_mat_cols_out_write => Block_Mat_exit73_pro_U0_src_mat_cols_out_write,
        src_rows_cast1_out_out_din => Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_din,
        src_rows_cast1_out_out_full_n => src_rows_cast1_loc_c_full_n,
        src_rows_cast1_out_out_write => Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_write,
        src_cols_cast2_out_out_din => Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_din,
        src_cols_cast2_out_out_full_n => src_cols_cast2_loc_c_full_n,
        src_cols_cast2_out_out_write => Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_write,
        threshold_out_din => Block_Mat_exit73_pro_U0_threshold_out_din,
        threshold_out_full_n => threshold_c_full_n,
        threshold_out_write => Block_Mat_exit73_pro_U0_threshold_out_write);

    axis2xfMat_U0 : component axis2xfMat
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => axis2xfMat_U0_ap_start,
        start_full_n => start_for_xfMat2axis_U0_full_n,
        ap_done => axis2xfMat_U0_ap_done,
        ap_continue => axis2xfMat_U0_ap_continue,
        ap_idle => axis2xfMat_U0_ap_idle,
        ap_ready => axis2xfMat_U0_ap_ready,
        start_out => axis2xfMat_U0_start_out,
        start_write => axis2xfMat_U0_start_write,
        src_TDATA => src_TDATA,
        src_TVALID => src_TVALID,
        src_TREADY => axis2xfMat_U0_src_TREADY,
        p_src_data_V_din => axis2xfMat_U0_p_src_data_V_din,
        p_src_data_V_full_n => src_mat_data_V_full_n,
        p_src_data_V_write => axis2xfMat_U0_p_src_data_V_write,
        src_rows_cast1_loc_dout => src_rows_cast1_loc_c_dout,
        src_rows_cast1_loc_empty_n => src_rows_cast1_loc_c_empty_n,
        src_rows_cast1_loc_read => axis2xfMat_U0_src_rows_cast1_loc_read,
        src_cols_cast2_loc_dout => src_cols_cast2_loc_c_dout,
        src_cols_cast2_loc_empty_n => src_cols_cast2_loc_c_empty_n,
        src_cols_cast2_loc_read => axis2xfMat_U0_src_cols_cast2_loc_read,
        src_rows_cast1_loc_out_din => axis2xfMat_U0_src_rows_cast1_loc_out_din,
        src_rows_cast1_loc_out_full_n => src_rows_cast1_loc_c_1_full_n,
        src_rows_cast1_loc_out_write => axis2xfMat_U0_src_rows_cast1_loc_out_write,
        src_cols_cast2_loc_out_din => axis2xfMat_U0_src_cols_cast2_loc_out_din,
        src_cols_cast2_loc_out_full_n => src_cols_cast2_loc_c_1_full_n,
        src_cols_cast2_loc_out_write => axis2xfMat_U0_src_cols_cast2_loc_out_write);

    fast_U0 : component fast
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => fast_U0_ap_start,
        ap_done => fast_U0_ap_done,
        ap_continue => fast_U0_ap_continue,
        ap_idle => fast_U0_ap_idle,
        ap_ready => fast_U0_ap_ready,
        p_src_mat_rows_dout => src_mat_rows_c_dout,
        p_src_mat_rows_empty_n => src_mat_rows_c_empty_n,
        p_src_mat_rows_read => fast_U0_p_src_mat_rows_read,
        p_src_mat_cols_dout => src_mat_cols_c_dout,
        p_src_mat_cols_empty_n => src_mat_cols_c_empty_n,
        p_src_mat_cols_read => fast_U0_p_src_mat_cols_read,
        p_src_mat_data_V_dout => src_mat_data_V_dout,
        p_src_mat_data_V_empty_n => src_mat_data_V_empty_n,
        p_src_mat_data_V_read => fast_U0_p_src_mat_data_V_read,
        p_dst_mat_data_V_din => fast_U0_p_dst_mat_data_V_din,
        p_dst_mat_data_V_full_n => dst_mat_data_V_full_n,
        p_dst_mat_data_V_write => fast_U0_p_dst_mat_data_V_write,
        threshold_dout => threshold_c_dout,
        threshold_empty_n => threshold_c_empty_n,
        threshold_read => fast_U0_threshold_read);

    xfMat2axis_U0 : component xfMat2axis
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => xfMat2axis_U0_ap_start,
        ap_done => xfMat2axis_U0_ap_done,
        ap_continue => xfMat2axis_U0_ap_continue,
        ap_idle => xfMat2axis_U0_ap_idle,
        ap_ready => xfMat2axis_U0_ap_ready,
        p_dst_data_V_dout => dst_mat_data_V_dout,
        p_dst_data_V_empty_n => dst_mat_data_V_empty_n,
        p_dst_data_V_read => xfMat2axis_U0_p_dst_data_V_read,
        dst_TDATA => xfMat2axis_U0_dst_TDATA,
        dst_TVALID => xfMat2axis_U0_dst_TVALID,
        dst_TREADY => dst_TREADY,
        dst_TLAST => xfMat2axis_U0_dst_TLAST,
        src_rows_cast1_loc_dout => src_rows_cast1_loc_c_1_dout,
        src_rows_cast1_loc_empty_n => src_rows_cast1_loc_c_1_empty_n,
        src_rows_cast1_loc_read => xfMat2axis_U0_src_rows_cast1_loc_read,
        src_cols_cast2_loc_dout => src_cols_cast2_loc_c_1_dout,
        src_cols_cast2_loc_empty_n => src_cols_cast2_loc_c_1_empty_n,
        src_cols_cast2_loc_read => xfMat2axis_U0_src_cols_cast2_loc_read);

    src_mat_rows_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_Mat_exit73_pro_U0_src_mat_rows_out_din,
        if_full_n => src_mat_rows_c_full_n,
        if_write => Block_Mat_exit73_pro_U0_src_mat_rows_out_write,
        if_dout => src_mat_rows_c_dout,
        if_empty_n => src_mat_rows_c_empty_n,
        if_read => fast_U0_p_src_mat_rows_read);

    src_mat_cols_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_Mat_exit73_pro_U0_src_mat_cols_out_din,
        if_full_n => src_mat_cols_c_full_n,
        if_write => Block_Mat_exit73_pro_U0_src_mat_cols_out_write,
        if_dout => src_mat_cols_c_dout,
        if_empty_n => src_mat_cols_c_empty_n,
        if_read => fast_U0_p_src_mat_cols_read);

    src_rows_cast1_loc_c_U : component fifo_w12_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_din,
        if_full_n => src_rows_cast1_loc_c_full_n,
        if_write => Block_Mat_exit73_pro_U0_src_rows_cast1_out_out_write,
        if_dout => src_rows_cast1_loc_c_dout,
        if_empty_n => src_rows_cast1_loc_c_empty_n,
        if_read => axis2xfMat_U0_src_rows_cast1_loc_read);

    src_cols_cast2_loc_c_U : component fifo_w12_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_din,
        if_full_n => src_cols_cast2_loc_c_full_n,
        if_write => Block_Mat_exit73_pro_U0_src_cols_cast2_out_out_write,
        if_dout => src_cols_cast2_loc_c_dout,
        if_empty_n => src_cols_cast2_loc_c_empty_n,
        if_read => axis2xfMat_U0_src_cols_cast2_loc_read);

    threshold_c_U : component fifo_w32_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Block_Mat_exit73_pro_U0_threshold_out_din,
        if_full_n => threshold_c_full_n,
        if_write => Block_Mat_exit73_pro_U0_threshold_out_write,
        if_dout => threshold_c_dout,
        if_empty_n => threshold_c_empty_n,
        if_read => fast_U0_threshold_read);

    src_mat_data_V_U : component fifo_w8_d150_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => axis2xfMat_U0_p_src_data_V_din,
        if_full_n => src_mat_data_V_full_n,
        if_write => axis2xfMat_U0_p_src_data_V_write,
        if_dout => src_mat_data_V_dout,
        if_empty_n => src_mat_data_V_empty_n,
        if_read => fast_U0_p_src_mat_data_V_read);

    src_rows_cast1_loc_c_1_U : component fifo_w12_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => axis2xfMat_U0_src_rows_cast1_loc_out_din,
        if_full_n => src_rows_cast1_loc_c_1_full_n,
        if_write => axis2xfMat_U0_src_rows_cast1_loc_out_write,
        if_dout => src_rows_cast1_loc_c_1_dout,
        if_empty_n => src_rows_cast1_loc_c_1_empty_n,
        if_read => xfMat2axis_U0_src_rows_cast1_loc_read);

    src_cols_cast2_loc_c_1_U : component fifo_w12_d3_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => axis2xfMat_U0_src_cols_cast2_loc_out_din,
        if_full_n => src_cols_cast2_loc_c_1_full_n,
        if_write => axis2xfMat_U0_src_cols_cast2_loc_out_write,
        if_dout => src_cols_cast2_loc_c_1_dout,
        if_empty_n => src_cols_cast2_loc_c_1_empty_n,
        if_read => xfMat2axis_U0_src_cols_cast2_loc_read);

    dst_mat_data_V_U : component fifo_w1_d150_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => fast_U0_p_dst_mat_data_V_din,
        if_full_n => dst_mat_data_V_full_n,
        if_write => fast_U0_p_dst_mat_data_V_write,
        if_dout => dst_mat_data_V_dout,
        if_empty_n => dst_mat_data_V_empty_n,
        if_read => xfMat2axis_U0_p_dst_data_V_read);

    start_for_fast_U0_U : component start_for_fast_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_fast_U0_din,
        if_full_n => start_for_fast_U0_full_n,
        if_write => Block_Mat_exit73_pro_U0_start_write,
        if_dout => start_for_fast_U0_dout,
        if_empty_n => start_for_fast_U0_empty_n,
        if_read => fast_U0_ap_ready);

    start_for_xfMat2aqcK_U : component start_for_xfMat2aqcK
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_xfMat2axis_U0_din,
        if_full_n => start_for_xfMat2axis_U0_full_n,
        if_write => axis2xfMat_U0_start_write,
        if_dout => start_for_xfMat2axis_U0_dout,
        if_empty_n => start_for_xfMat2axis_U0_empty_n,
        if_read => xfMat2axis_U0_ap_ready);





    ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready <= ap_sync_Block_Mat_exit73_pro_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_axis2xfMat_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_axis2xfMat_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_axis2xfMat_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_axis2xfMat_U0_ap_ready <= ap_sync_axis2xfMat_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    Block_Mat_exit73_pro_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_0 = Block_Mat_exit73_pro_U0_ap_ready) and (ap_sync_ready = ap_const_logic_1))) then 
                Block_Mat_exit73_pro_U0_ap_ready_count <= std_logic_vector(unsigned(Block_Mat_exit73_pro_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_const_logic_1 = Block_Mat_exit73_pro_U0_ap_ready) and (ap_sync_ready = ap_const_logic_0))) then 
                Block_Mat_exit73_pro_U0_ap_ready_count <= std_logic_vector(unsigned(Block_Mat_exit73_pro_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    axis2xfMat_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((axis2xfMat_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                axis2xfMat_U0_ap_ready_count <= std_logic_vector(unsigned(axis2xfMat_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((axis2xfMat_U0_ap_ready = ap_const_logic_1) and (ap_sync_ready = ap_const_logic_0))) then 
                axis2xfMat_U0_ap_ready_count <= std_logic_vector(unsigned(axis2xfMat_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    Block_Mat_exit73_pro_U0_ap_continue <= ap_const_logic_1;
    Block_Mat_exit73_pro_U0_ap_start <= ((ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready xor ap_const_logic_1) and ap_start);
    ap_done <= xfMat2axis_U0_ap_done;
    ap_idle <= (xfMat2axis_U0_ap_idle and fast_U0_ap_idle and axis2xfMat_U0_ap_idle and Block_Mat_exit73_pro_U0_ap_idle);
    ap_ready <= ap_sync_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_Block_Mat_exit73_pro_U0_ap_ready <= (ap_sync_reg_Block_Mat_exit73_pro_U0_ap_ready or Block_Mat_exit73_pro_U0_ap_ready);
    ap_sync_axis2xfMat_U0_ap_ready <= (axis2xfMat_U0_ap_ready or ap_sync_reg_axis2xfMat_U0_ap_ready);
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= xfMat2axis_U0_ap_done;
    ap_sync_ready <= (ap_sync_axis2xfMat_U0_ap_ready and ap_sync_Block_Mat_exit73_pro_U0_ap_ready);
    axis2xfMat_U0_ap_continue <= ap_const_logic_1;
    axis2xfMat_U0_ap_start <= ((ap_sync_reg_axis2xfMat_U0_ap_ready xor ap_const_logic_1) and ap_start);
    dst_TDATA <= xfMat2axis_U0_dst_TDATA;
    dst_TLAST <= xfMat2axis_U0_dst_TLAST;
    dst_TVALID <= xfMat2axis_U0_dst_TVALID;
    fast_U0_ap_continue <= ap_const_logic_1;
    fast_U0_ap_start <= start_for_fast_U0_empty_n;
    fast_U0_start_full_n <= ap_const_logic_1;
    fast_U0_start_write <= ap_const_logic_0;
    src_TREADY <= axis2xfMat_U0_src_TREADY;
    start_for_fast_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_xfMat2axis_U0_din <= (0=>ap_const_logic_1, others=>'-');
    xfMat2axis_U0_ap_continue <= ap_const_logic_1;
    xfMat2axis_U0_ap_start <= start_for_xfMat2axis_U0_empty_n;
    xfMat2axis_U0_start_full_n <= ap_const_logic_1;
    xfMat2axis_U0_start_write <= ap_const_logic_0;
end behav;