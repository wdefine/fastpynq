// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _xfMat2axis_HH_
#define _xfMat2axis_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct xfMat2axis : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1> > p_dst_data_V_dout;
    sc_in< sc_logic > p_dst_data_V_empty_n;
    sc_out< sc_logic > p_dst_data_V_read;
    sc_out< sc_lv<24> > dst_TDATA;
    sc_out< sc_logic > dst_TVALID;
    sc_in< sc_logic > dst_TREADY;
    sc_out< sc_lv<1> > dst_TLAST;
    sc_in< sc_lv<12> > src_rows_cast1_loc_dout;
    sc_in< sc_logic > src_rows_cast1_loc_empty_n;
    sc_out< sc_logic > src_rows_cast1_loc_read;
    sc_in< sc_lv<12> > src_cols_cast2_loc_dout;
    sc_in< sc_logic > src_cols_cast2_loc_empty_n;
    sc_out< sc_logic > src_cols_cast2_loc_read;


    // Module declarations
    xfMat2axis(sc_module_name name);
    SC_HAS_PROCESS(xfMat2axis);

    ~xfMat2axis();

    sc_trace_file* mVcdFile;

    regslice_both<24>* regslice_both_dst_data_V_U;
    regslice_both<1>* regslice_both_dst_last_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_dst_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln25_reg_220;
    sc_signal< sc_logic > dst_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln25_reg_220_pp0_iter1_reg;
    sc_signal< sc_logic > src_rows_cast1_loc_blk_n;
    sc_signal< sc_logic > src_cols_cast2_loc_blk_n;
    sc_signal< sc_lv<12> > j_0_i_i_reg_101;
    sc_signal< sc_lv<12> > src_rows_cast1_loc_r_reg_186;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<12> > src_cols_cast2_loc_r_reg_191;
    sc_signal< sc_lv<13> > add_ln29_fu_116_p2;
    sc_signal< sc_lv<13> > add_ln29_reg_196;
    sc_signal< sc_lv<13> > add_ln29_1_fu_126_p2;
    sc_signal< sc_lv<13> > add_ln29_1_reg_201;
    sc_signal< sc_lv<1> > icmp_ln24_fu_136_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > regslice_both_dst_data_V_U_apdone_blk;
    sc_signal< sc_lv<12> > i_fu_141_p2;
    sc_signal< sc_lv<12> > i_reg_210;
    sc_signal< sc_lv<1> > icmp_ln29_fu_147_p2;
    sc_signal< sc_lv<1> > icmp_ln29_reg_215;
    sc_signal< sc_lv<1> > icmp_ln25_fu_156_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<12> > j_fu_161_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > and_ln29_fu_172_p2;
    sc_signal< sc_lv<1> > and_ln29_reg_229;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<12> > i_0_i_i_reg_90;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<13> > zext_ln29_fu_112_p1;
    sc_signal< sc_lv<13> > zext_ln29_1_fu_122_p1;
    sc_signal< sc_lv<13> > zext_ln24_fu_132_p1;
    sc_signal< sc_lv<13> > zext_ln25_fu_152_p1;
    sc_signal< sc_lv<1> > icmp_ln29_1_fu_167_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<24> > dst_TDATA_int;
    sc_signal< sc_logic > dst_TVALID_int;
    sc_signal< sc_logic > dst_TREADY_int;
    sc_signal< sc_logic > regslice_both_dst_data_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_dst_last_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_dst_last_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_dst_last_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<13> ap_const_lv13_1FFF;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<24> ap_const_lv24_FF;
    static const sc_lv<24> ap_const_lv24_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln29_1_fu_126_p2();
    void thread_add_ln29_fu_116_p2();
    void thread_and_ln29_fu_172_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_io();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_dst_TDATA_blk_n();
    void thread_dst_TDATA_int();
    void thread_dst_TVALID();
    void thread_dst_TVALID_int();
    void thread_i_fu_141_p2();
    void thread_icmp_ln24_fu_136_p2();
    void thread_icmp_ln25_fu_156_p2();
    void thread_icmp_ln29_1_fu_167_p2();
    void thread_icmp_ln29_fu_147_p2();
    void thread_j_fu_161_p2();
    void thread_p_dst_data_V_blk_n();
    void thread_p_dst_data_V_read();
    void thread_src_cols_cast2_loc_blk_n();
    void thread_src_cols_cast2_loc_read();
    void thread_src_rows_cast1_loc_blk_n();
    void thread_src_rows_cast1_loc_read();
    void thread_zext_ln24_fu_132_p1();
    void thread_zext_ln25_fu_152_p1();
    void thread_zext_ln29_1_fu_122_p1();
    void thread_zext_ln29_fu_112_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
