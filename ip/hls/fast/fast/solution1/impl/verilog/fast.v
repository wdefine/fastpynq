// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fast (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_mat_rows_dout,
        p_src_mat_rows_empty_n,
        p_src_mat_rows_read,
        p_src_mat_cols_dout,
        p_src_mat_cols_empty_n,
        p_src_mat_cols_read,
        p_src_mat_data_V_dout,
        p_src_mat_data_V_empty_n,
        p_src_mat_data_V_read,
        p_dst_mat_data_V_din,
        p_dst_mat_data_V_full_n,
        p_dst_mat_data_V_write,
        threshold_dout,
        threshold_empty_n,
        threshold_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_src_mat_rows_dout;
input   p_src_mat_rows_empty_n;
output   p_src_mat_rows_read;
input  [31:0] p_src_mat_cols_dout;
input   p_src_mat_cols_empty_n;
output   p_src_mat_cols_read;
input  [7:0] p_src_mat_data_V_dout;
input   p_src_mat_data_V_empty_n;
output   p_src_mat_data_V_read;
output  [0:0] p_dst_mat_data_V_din;
input   p_dst_mat_data_V_full_n;
output   p_dst_mat_data_V_write;
input  [31:0] threshold_dout;
input   threshold_empty_n;
output   threshold_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_mat_rows_read;
reg p_src_mat_cols_read;
reg p_src_mat_data_V_read;
reg p_dst_mat_data_V_write;
reg threshold_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_mat_rows_blk_n;
reg    p_src_mat_cols_blk_n;
reg    threshold_blk_n;
wire   [7:0] trunc_ln68_fu_57_p1;
reg   [7:0] trunc_ln68_reg_72;
reg    ap_block_state1;
wire   [15:0] trunc_ln946_fu_62_p1;
reg   [15:0] trunc_ln946_reg_77;
wire   [15:0] trunc_ln946_1_fu_67_p1;
reg   [15:0] trunc_ln946_1_reg_82;
wire    grp_xFFastCornerDetectio_fu_46_p_src_mat_data_V_read;
wire   [0:0] grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_din;
wire    grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_write;
wire    grp_xFFastCornerDetectio_fu_46_ap_start;
wire    grp_xFFastCornerDetectio_fu_46_ap_done;
wire    grp_xFFastCornerDetectio_fu_46_ap_ready;
wire    grp_xFFastCornerDetectio_fu_46_ap_idle;
reg    grp_xFFastCornerDetectio_fu_46_ap_continue;
reg    grp_xFFastCornerDetectio_fu_46_ap_start_reg;
reg    ap_block_state1_ignore_call11;
wire    ap_CS_fsm_state2;
wire    ap_sync_grp_xFFastCornerDetectio_fu_46_ap_ready;
wire    ap_sync_grp_xFFastCornerDetectio_fu_46_ap_done;
reg    ap_block_state2_on_subcall_done;
reg    ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready;
reg    ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_xFFastCornerDetectio_fu_46_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready = 1'b0;
#0 ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done = 1'b0;
end

xFFastCornerDetectio grp_xFFastCornerDetectio_fu_46(
    .p_src_mat_data_V_dout(p_src_mat_data_V_dout),
    .p_src_mat_data_V_empty_n(p_src_mat_data_V_empty_n),
    .p_src_mat_data_V_read(grp_xFFastCornerDetectio_fu_46_p_src_mat_data_V_read),
    .p_dst_mat_data_V_din(grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_din),
    .p_dst_mat_data_V_full_n(p_dst_mat_data_V_full_n),
    .p_dst_mat_data_V_write(grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_write),
    .p_image_height(trunc_ln946_reg_77),
    .p_image_width(trunc_ln946_1_reg_82),
    .p_threshold(trunc_ln68_reg_72),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .p_image_height_ap_vld(1'b1),
    .p_image_width_ap_vld(1'b1),
    .p_threshold_ap_vld(1'b1),
    .ap_start(grp_xFFastCornerDetectio_fu_46_ap_start),
    .ap_done(grp_xFFastCornerDetectio_fu_46_ap_done),
    .ap_ready(grp_xFFastCornerDetectio_fu_46_ap_ready),
    .ap_idle(grp_xFFastCornerDetectio_fu_46_ap_idle),
    .ap_continue(grp_xFFastCornerDetectio_fu_46_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done <= 1'b0;
        end else if ((grp_xFFastCornerDetectio_fu_46_ap_done == 1'b1)) begin
            ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready <= 1'b0;
        end else if ((grp_xFFastCornerDetectio_fu_46_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFFastCornerDetectio_fu_46_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_xFFastCornerDetectio_fu_46_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)) | (~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_xFFastCornerDetectio_fu_46_ap_start_reg <= 1'b1;
        end else if ((grp_xFFastCornerDetectio_fu_46_ap_ready == 1'b1)) begin
            grp_xFFastCornerDetectio_fu_46_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        trunc_ln68_reg_72 <= trunc_ln68_fu_57_p1;
        trunc_ln946_1_reg_82 <= trunc_ln946_1_fu_67_p1;
        trunc_ln946_reg_77 <= trunc_ln946_fu_62_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_xFFastCornerDetectio_fu_46_ap_continue = 1'b1;
    end else begin
        grp_xFFastCornerDetectio_fu_46_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_dst_mat_data_V_write = grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_write;
    end else begin
        p_dst_mat_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_blk_n = p_src_mat_cols_empty_n;
    end else begin
        p_src_mat_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_cols_read = 1'b1;
    end else begin
        p_src_mat_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_src_mat_data_V_read = grp_xFFastCornerDetectio_fu_46_p_src_mat_data_V_read;
    end else begin
        p_src_mat_data_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_blk_n = p_src_mat_rows_empty_n;
    end else begin
        p_src_mat_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_mat_rows_read = 1'b1;
    end else begin
        p_src_mat_rows_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        threshold_blk_n = threshold_empty_n;
    end else begin
        threshold_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        threshold_read = 1'b1;
    end else begin
        threshold_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call11 = ((ap_start == 1'b0) | (threshold_empty_n == 1'b0) | (p_src_mat_cols_empty_n == 1'b0) | (p_src_mat_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_grp_xFFastCornerDetectio_fu_46_ap_ready & ap_sync_grp_xFFastCornerDetectio_fu_46_ap_done) == 1'b0);
end

assign ap_sync_grp_xFFastCornerDetectio_fu_46_ap_done = (grp_xFFastCornerDetectio_fu_46_ap_done | ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_done);

assign ap_sync_grp_xFFastCornerDetectio_fu_46_ap_ready = (grp_xFFastCornerDetectio_fu_46_ap_ready | ap_sync_reg_grp_xFFastCornerDetectio_fu_46_ap_ready);

assign grp_xFFastCornerDetectio_fu_46_ap_start = grp_xFFastCornerDetectio_fu_46_ap_start_reg;

assign p_dst_mat_data_V_din = grp_xFFastCornerDetectio_fu_46_p_dst_mat_data_V_din;

assign trunc_ln68_fu_57_p1 = threshold_dout[7:0];

assign trunc_ln946_1_fu_67_p1 = p_src_mat_cols_dout[15:0];

assign trunc_ln946_fu_62_p1 = p_src_mat_rows_dout[15:0];

endmodule //fast
