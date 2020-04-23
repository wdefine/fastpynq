// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _xFFastCornerDetectio_HH_
#define _xFFastCornerDetectio_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "xFfast7x75682.h"
#include "xFfastnms5781.h"
#include "fifo_w8_d2_A.h"
#include "fifo_w12_d2_A.h"
#include "start_for_xFfastnpcA.h"

namespace ap_rtl {

struct xFFastCornerDetectio : public sc_module {
    // Port declarations 19
    sc_in< sc_lv<8> > p_src_mat_data_V_dout;
    sc_in< sc_logic > p_src_mat_data_V_empty_n;
    sc_out< sc_logic > p_src_mat_data_V_read;
    sc_out< sc_lv<1> > p_dst_mat_data_V_din;
    sc_in< sc_logic > p_dst_mat_data_V_full_n;
    sc_out< sc_logic > p_dst_mat_data_V_write;
    sc_in< sc_lv<16> > p_image_height;
    sc_in< sc_lv<16> > p_image_width;
    sc_in< sc_lv<8> > p_threshold;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > p_image_height_ap_vld;
    sc_in< sc_logic > p_image_width_ap_vld;
    sc_in< sc_logic > p_threshold_ap_vld;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    xFFastCornerDetectio(sc_module_name name);
    SC_HAS_PROCESS(xFFastCornerDetectio);

    ~xFFastCornerDetectio();

    sc_trace_file* mVcdFile;

    xFfast7x75682* xFfast7x75682_U0;
    xFfastnms5781* xFfastnms5781_U0;
    fifo_w8_d2_A* p_dst_data_V_U;
    fifo_w12_d2_A* p_image_height_c_U;
    fifo_w12_d2_A* p_image_width_c_U;
    start_for_xFfastnpcA* start_for_xFfastnpcA_U;
    sc_signal< sc_logic > xFfast7x75682_U0_ap_start;
    sc_signal< sc_logic > xFfast7x75682_U0_ap_done;
    sc_signal< sc_logic > xFfast7x75682_U0_ap_continue;
    sc_signal< sc_logic > xFfast7x75682_U0_ap_idle;
    sc_signal< sc_logic > xFfast7x75682_U0_ap_ready;
    sc_signal< sc_logic > xFfast7x75682_U0_start_out;
    sc_signal< sc_logic > xFfast7x75682_U0_start_write;
    sc_signal< sc_logic > xFfast7x75682_U0_p_src_mat_data_V_read;
    sc_signal< sc_lv<8> > xFfast7x75682_U0_p_dst_data_V_din;
    sc_signal< sc_logic > xFfast7x75682_U0_p_dst_data_V_write;
    sc_signal< sc_lv<12> > xFfast7x75682_U0_p_image_height_c_din;
    sc_signal< sc_logic > xFfast7x75682_U0_p_image_height_c_write;
    sc_signal< sc_lv<12> > xFfast7x75682_U0_p_image_width_c_din;
    sc_signal< sc_logic > xFfast7x75682_U0_p_image_width_c_write;
    sc_signal< sc_logic > xFfastnms5781_U0_ap_start;
    sc_signal< sc_logic > xFfastnms5781_U0_ap_done;
    sc_signal< sc_logic > xFfastnms5781_U0_ap_continue;
    sc_signal< sc_logic > xFfastnms5781_U0_ap_idle;
    sc_signal< sc_logic > xFfastnms5781_U0_ap_ready;
    sc_signal< sc_logic > xFfastnms5781_U0_p_dst_data_V_read;
    sc_signal< sc_lv<1> > xFfastnms5781_U0_p_dst_mat_data_V_din;
    sc_signal< sc_logic > xFfastnms5781_U0_p_dst_mat_data_V_write;
    sc_signal< sc_logic > xFfastnms5781_U0_p_image_height_read;
    sc_signal< sc_logic > xFfastnms5781_U0_p_image_width_read;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > p_dst_data_V_full_n;
    sc_signal< sc_lv<8> > p_dst_data_V_dout;
    sc_signal< sc_logic > p_dst_data_V_empty_n;
    sc_signal< sc_logic > p_image_height_c_full_n;
    sc_signal< sc_lv<12> > p_image_height_c_dout;
    sc_signal< sc_logic > p_image_height_c_empty_n;
    sc_signal< sc_logic > p_image_width_c_full_n;
    sc_signal< sc_lv<12> > p_image_width_c_dout;
    sc_signal< sc_logic > p_image_width_c_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_xFfastnms5781_U0_din;
    sc_signal< sc_logic > start_for_xFfastnms5781_U0_full_n;
    sc_signal< sc_lv<1> > start_for_xFfastnms5781_U0_dout;
    sc_signal< sc_logic > start_for_xFfastnms5781_U0_empty_n;
    sc_signal< sc_logic > xFfastnms5781_U0_start_full_n;
    sc_signal< sc_logic > xFfastnms5781_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_p_dst_mat_data_V_din();
    void thread_p_dst_mat_data_V_write();
    void thread_p_src_mat_data_V_read();
    void thread_start_for_xFfastnms5781_U0_din();
    void thread_xFfast7x75682_U0_ap_continue();
    void thread_xFfast7x75682_U0_ap_start();
    void thread_xFfastnms5781_U0_ap_continue();
    void thread_xFfastnms5781_U0_ap_start();
    void thread_xFfastnms5781_U0_start_full_n();
    void thread_xFfastnms5781_U0_start_write();
};

}

using namespace ap_rtl;

#endif