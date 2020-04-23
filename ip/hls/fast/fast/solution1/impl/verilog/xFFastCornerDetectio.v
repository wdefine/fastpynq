// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xFFastCornerDetectio (
        p_src_mat_data_V_dout,
        p_src_mat_data_V_empty_n,
        p_src_mat_data_V_read,
        p_dst_mat_data_V_din,
        p_dst_mat_data_V_full_n,
        p_dst_mat_data_V_write,
        p_image_height,
        p_image_width,
        p_threshold,
        ap_clk,
        ap_rst,
        p_image_height_ap_vld,
        p_image_width_ap_vld,
        p_threshold_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [7:0] p_src_mat_data_V_dout;
input   p_src_mat_data_V_empty_n;
output   p_src_mat_data_V_read;
output  [0:0] p_dst_mat_data_V_din;
input   p_dst_mat_data_V_full_n;
output   p_dst_mat_data_V_write;
input  [15:0] p_image_height;
input  [15:0] p_image_width;
input  [7:0] p_threshold;
input   ap_clk;
input   ap_rst;
input   p_image_height_ap_vld;
input   p_image_width_ap_vld;
input   p_threshold_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    xFfast7x75682_U0_ap_start;
wire    xFfast7x75682_U0_ap_done;
wire    xFfast7x75682_U0_ap_continue;
wire    xFfast7x75682_U0_ap_idle;
wire    xFfast7x75682_U0_ap_ready;
wire    xFfast7x75682_U0_start_out;
wire    xFfast7x75682_U0_start_write;
wire    xFfast7x75682_U0_p_src_mat_data_V_read;
wire   [7:0] xFfast7x75682_U0_p_dst_data_V_din;
wire    xFfast7x75682_U0_p_dst_data_V_write;
wire   [11:0] xFfast7x75682_U0_p_image_height_c_din;
wire    xFfast7x75682_U0_p_image_height_c_write;
wire   [11:0] xFfast7x75682_U0_p_image_width_c_din;
wire    xFfast7x75682_U0_p_image_width_c_write;
wire    xFfastnms5781_U0_ap_start;
wire    xFfastnms5781_U0_ap_done;
wire    xFfastnms5781_U0_ap_continue;
wire    xFfastnms5781_U0_ap_idle;
wire    xFfastnms5781_U0_ap_ready;
wire    xFfastnms5781_U0_p_dst_data_V_read;
wire   [0:0] xFfastnms5781_U0_p_dst_mat_data_V_din;
wire    xFfastnms5781_U0_p_dst_mat_data_V_write;
wire    xFfastnms5781_U0_p_image_height_read;
wire    xFfastnms5781_U0_p_image_width_read;
wire    ap_sync_continue;
wire    p_dst_data_V_full_n;
wire   [7:0] p_dst_data_V_dout;
wire    p_dst_data_V_empty_n;
wire    p_image_height_c_full_n;
wire   [11:0] p_image_height_c_dout;
wire    p_image_height_c_empty_n;
wire    p_image_width_c_full_n;
wire   [11:0] p_image_width_c_dout;
wire    p_image_width_c_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_xFfastnms5781_U0_din;
wire    start_for_xFfastnms5781_U0_full_n;
wire   [0:0] start_for_xFfastnms5781_U0_dout;
wire    start_for_xFfastnms5781_U0_empty_n;
wire    xFfastnms5781_U0_start_full_n;
wire    xFfastnms5781_U0_start_write;

xFfast7x75682 xFfast7x75682_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(xFfast7x75682_U0_ap_start),
    .start_full_n(start_for_xFfastnms5781_U0_full_n),
    .ap_done(xFfast7x75682_U0_ap_done),
    .ap_continue(xFfast7x75682_U0_ap_continue),
    .ap_idle(xFfast7x75682_U0_ap_idle),
    .ap_ready(xFfast7x75682_U0_ap_ready),
    .start_out(xFfast7x75682_U0_start_out),
    .start_write(xFfast7x75682_U0_start_write),
    .p_src_mat_data_V_dout(p_src_mat_data_V_dout),
    .p_src_mat_data_V_empty_n(p_src_mat_data_V_empty_n),
    .p_src_mat_data_V_read(xFfast7x75682_U0_p_src_mat_data_V_read),
    .p_dst_data_V_din(xFfast7x75682_U0_p_dst_data_V_din),
    .p_dst_data_V_full_n(p_dst_data_V_full_n),
    .p_dst_data_V_write(xFfast7x75682_U0_p_dst_data_V_write),
    .p_image_height(p_image_height),
    .p_image_width(p_image_width),
    .p_threshold(p_threshold),
    .p_image_height_c_din(xFfast7x75682_U0_p_image_height_c_din),
    .p_image_height_c_full_n(p_image_height_c_full_n),
    .p_image_height_c_write(xFfast7x75682_U0_p_image_height_c_write),
    .p_image_width_c_din(xFfast7x75682_U0_p_image_width_c_din),
    .p_image_width_c_full_n(p_image_width_c_full_n),
    .p_image_width_c_write(xFfast7x75682_U0_p_image_width_c_write)
);

xFfastnms5781 xFfastnms5781_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(xFfastnms5781_U0_ap_start),
    .ap_done(xFfastnms5781_U0_ap_done),
    .ap_continue(xFfastnms5781_U0_ap_continue),
    .ap_idle(xFfastnms5781_U0_ap_idle),
    .ap_ready(xFfastnms5781_U0_ap_ready),
    .p_dst_data_V_dout(p_dst_data_V_dout),
    .p_dst_data_V_empty_n(p_dst_data_V_empty_n),
    .p_dst_data_V_read(xFfastnms5781_U0_p_dst_data_V_read),
    .p_dst_mat_data_V_din(xFfastnms5781_U0_p_dst_mat_data_V_din),
    .p_dst_mat_data_V_full_n(p_dst_mat_data_V_full_n),
    .p_dst_mat_data_V_write(xFfastnms5781_U0_p_dst_mat_data_V_write),
    .p_image_height_dout(p_image_height_c_dout),
    .p_image_height_empty_n(p_image_height_c_empty_n),
    .p_image_height_read(xFfastnms5781_U0_p_image_height_read),
    .p_image_width_dout(p_image_width_c_dout),
    .p_image_width_empty_n(p_image_width_c_empty_n),
    .p_image_width_read(xFfastnms5781_U0_p_image_width_read)
);

fifo_w8_d2_A p_dst_data_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFfast7x75682_U0_p_dst_data_V_din),
    .if_full_n(p_dst_data_V_full_n),
    .if_write(xFfast7x75682_U0_p_dst_data_V_write),
    .if_dout(p_dst_data_V_dout),
    .if_empty_n(p_dst_data_V_empty_n),
    .if_read(xFfastnms5781_U0_p_dst_data_V_read)
);

fifo_w12_d2_A p_image_height_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFfast7x75682_U0_p_image_height_c_din),
    .if_full_n(p_image_height_c_full_n),
    .if_write(xFfast7x75682_U0_p_image_height_c_write),
    .if_dout(p_image_height_c_dout),
    .if_empty_n(p_image_height_c_empty_n),
    .if_read(xFfastnms5781_U0_p_image_height_read)
);

fifo_w12_d2_A p_image_width_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFfast7x75682_U0_p_image_width_c_din),
    .if_full_n(p_image_width_c_full_n),
    .if_write(xFfast7x75682_U0_p_image_width_c_write),
    .if_dout(p_image_width_c_dout),
    .if_empty_n(p_image_width_c_empty_n),
    .if_read(xFfastnms5781_U0_p_image_width_read)
);

start_for_xFfastnpcA start_for_xFfastnpcA_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xFfastnms5781_U0_din),
    .if_full_n(start_for_xFfastnms5781_U0_full_n),
    .if_write(xFfast7x75682_U0_start_write),
    .if_dout(start_for_xFfastnms5781_U0_dout),
    .if_empty_n(start_for_xFfastnms5781_U0_empty_n),
    .if_read(xFfastnms5781_U0_ap_ready)
);

assign ap_done = xFfastnms5781_U0_ap_done;

assign ap_idle = (xFfastnms5781_U0_ap_idle & xFfast7x75682_U0_ap_idle);

assign ap_ready = xFfast7x75682_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = xFfastnms5781_U0_ap_done;

assign ap_sync_ready = xFfast7x75682_U0_ap_ready;

assign p_dst_mat_data_V_din = xFfastnms5781_U0_p_dst_mat_data_V_din;

assign p_dst_mat_data_V_write = xFfastnms5781_U0_p_dst_mat_data_V_write;

assign p_src_mat_data_V_read = xFfast7x75682_U0_p_src_mat_data_V_read;

assign start_for_xFfastnms5781_U0_din = 1'b1;

assign xFfast7x75682_U0_ap_continue = 1'b1;

assign xFfast7x75682_U0_ap_start = ap_start;

assign xFfastnms5781_U0_ap_continue = ap_continue;

assign xFfastnms5781_U0_ap_start = start_for_xFfastnms5781_U0_empty_n;

assign xFfastnms5781_U0_start_full_n = 1'b1;

assign xFfastnms5781_U0_start_write = 1'b0;

endmodule //xFFastCornerDetectio
