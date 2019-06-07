// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="app_conv_combine_l1_1,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.025500,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=559,HLS_SYN_LUT=646}" *)

module app_conv_combine_l1_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        reset_app_conv_combine_l1_1_V_dout,
        reset_app_conv_combine_l1_1_V_empty_n,
        reset_app_conv_combine_l1_1_V_read,
        app_conv_combine_l1_input_data_2_V_data_V_dout,
        app_conv_combine_l1_input_data_2_V_data_V_empty_n,
        app_conv_combine_l1_input_data_2_V_data_V_read,
        app_conv_combine_l1_input_data_2_V_eop_dout,
        app_conv_combine_l1_input_data_2_V_eop_empty_n,
        app_conv_combine_l1_input_data_2_V_eop_read,
        app_conv_combine_l1_input_data_3_V_data_V_dout,
        app_conv_combine_l1_input_data_3_V_data_V_empty_n,
        app_conv_combine_l1_input_data_3_V_data_V_read,
        app_conv_combine_l1_input_data_3_V_eop_dout,
        app_conv_combine_l1_input_data_3_V_eop_empty_n,
        app_conv_combine_l1_input_data_3_V_eop_read,
        app_conv_combine_l2_input_data_1_V_data_V_din,
        app_conv_combine_l2_input_data_1_V_data_V_full_n,
        app_conv_combine_l2_input_data_1_V_data_V_write,
        app_conv_combine_l2_input_data_1_V_eop_din,
        app_conv_combine_l2_input_data_1_V_eop_full_n,
        app_conv_combine_l2_input_data_1_V_eop_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input   reset_app_conv_combine_l1_1_V_dout;
input   reset_app_conv_combine_l1_1_V_empty_n;
output   reset_app_conv_combine_l1_1_V_read;
input  [127:0] app_conv_combine_l1_input_data_2_V_data_V_dout;
input   app_conv_combine_l1_input_data_2_V_data_V_empty_n;
output   app_conv_combine_l1_input_data_2_V_data_V_read;
input   app_conv_combine_l1_input_data_2_V_eop_dout;
input   app_conv_combine_l1_input_data_2_V_eop_empty_n;
output   app_conv_combine_l1_input_data_2_V_eop_read;
input  [127:0] app_conv_combine_l1_input_data_3_V_data_V_dout;
input   app_conv_combine_l1_input_data_3_V_data_V_empty_n;
output   app_conv_combine_l1_input_data_3_V_data_V_read;
input   app_conv_combine_l1_input_data_3_V_eop_dout;
input   app_conv_combine_l1_input_data_3_V_eop_empty_n;
output   app_conv_combine_l1_input_data_3_V_eop_read;
output  [255:0] app_conv_combine_l2_input_data_1_V_data_V_din;
input   app_conv_combine_l2_input_data_1_V_data_V_full_n;
output   app_conv_combine_l2_input_data_1_V_data_V_write;
output   app_conv_combine_l2_input_data_1_V_eop_din;
input   app_conv_combine_l2_input_data_1_V_eop_full_n;
output   app_conv_combine_l2_input_data_1_V_eop_write;

reg ap_idle;
reg reset_app_conv_combine_l1_1_V_read;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    app_conv_combine_l2_input_data_1_V_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] reset_reg_208;
reg   [0:0] empty_n_reg_589;
reg   [0:0] data_2_ready_reg_196;
reg   [0:0] data_3_ready_reg_184;
reg   [0:0] empty_n_3_reg_594;
reg   [0:0] empty_n_4_reg_612;
reg    app_conv_combine_l2_input_data_1_V_eop_blk_n;
reg   [0:0] input_data_3_1_reg_220;
reg   [127:0] input_data_3_reg_231;
reg   [0:0] input_data_2_1_reg_242;
reg   [127:0] input_data_2_reg_253;
wire   [0:0] empty_n_fu_497_p1;
wire    ap_block_state2_pp0_stage0_iter0;
wire    app_conv_combine_l2_input_data_1_V_eop1_status;
reg    ap_predicate_op54_write_state3;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_phi_mux_reset_phi_fu_212_p4;
wire   [0:0] empty_n_3_fu_501_p1;
reg   [0:0] ap_phi_mux_data_2_ready_phi_fu_200_p4;
reg   [127:0] tmp_data_V_1_reg_600;
reg   [0:0] tmp_eop_1_reg_606;
reg   [0:0] ap_phi_mux_data_3_ready_phi_fu_188_p4;
reg   [127:0] tmp_data_V_2_reg_617;
reg   [0:0] tmp_eop_2_reg_623;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_data_3_ready_be_phi_fu_458_p4;
reg   [0:0] ap_phi_mux_data_2_ready_be_phi_fu_471_p4;
reg   [0:0] ap_phi_mux_reset_be_phi_fu_484_p4;
reg   [0:0] ap_phi_mux_input_data_3_1_be_phi_fu_406_p4;
reg   [127:0] ap_phi_mux_input_data_3_be_phi_fu_419_p4;
reg   [0:0] ap_phi_mux_input_data_2_1_be_phi_fu_432_p4;
reg   [127:0] ap_phi_mux_input_data_2_be_phi_fu_445_p4;
reg   [0:0] ap_phi_mux_input_data_2_1_1_phi_fu_267_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_2_1_1_reg_264;
reg   [127:0] ap_phi_mux_input_data_2_0_1_phi_fu_277_p4;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_2_0_1_reg_274;
reg   [0:0] ap_phi_mux_data_2_ready_1_phi_fu_287_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_data_2_ready_1_reg_284;
reg   [0:0] ap_phi_mux_input_data_3_1_1_phi_fu_297_p4;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_3_1_1_reg_294;
reg   [127:0] ap_phi_mux_input_data_3_0_1_phi_fu_307_p4;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_3_0_1_reg_304;
reg   [0:0] ap_phi_mux_input_data_3_1_2_phi_fu_317_p6;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_3_1_2_reg_314;
reg   [127:0] ap_phi_mux_input_data_3_0_2_phi_fu_330_p6;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_3_0_2_reg_327;
reg   [0:0] ap_phi_mux_input_data_2_1_2_phi_fu_343_p6;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_2_1_2_reg_340;
reg   [127:0] ap_phi_mux_input_data_2_0_2_phi_fu_356_p6;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_2_0_2_reg_353;
reg   [0:0] ap_phi_mux_data_3_ready_1_phi_fu_369_p6;
wire   [0:0] ap_phi_reg_pp0_iter1_data_3_ready_1_reg_366;
reg   [0:0] ap_phi_mux_data_2_ready_2_phi_fu_382_p6;
wire   [0:0] ap_phi_reg_pp0_iter1_data_2_ready_2_reg_379;
wire   [0:0] ap_phi_reg_pp0_iter0_reset_1_reg_392;
reg   [0:0] ap_phi_reg_pp0_iter1_reset_1_reg_392;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_3_1_be_reg_402;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_3_be_reg_415;
wire   [0:0] ap_phi_reg_pp0_iter1_input_data_2_1_be_reg_428;
wire   [127:0] ap_phi_reg_pp0_iter1_input_data_2_be_reg_441;
wire   [0:0] ap_phi_reg_pp0_iter1_data_3_ready_be_reg_454;
wire   [0:0] ap_phi_reg_pp0_iter1_data_2_ready_be_reg_467;
wire   [0:0] p_reset_1_fu_562_p2;
wire   [0:0] ap_phi_reg_pp0_iter1_reset_be_reg_480;
reg    app_conv_combine_l1_input_data_2_V_eop0_update;
wire   [0:0] empty_n_1_nbread_fu_158_p3_0;
reg    app_conv_combine_l1_input_data_3_V_eop0_update;
wire   [0:0] empty_n_2_nbread_fu_166_p3_0;
reg    app_conv_combine_l2_input_data_1_V_eop1_update;
reg    ap_block_pp0_stage0_01001;
reg   [31:0] reset_cnt_fu_148;
wire   [31:0] p_s_fu_569_p3;
wire   [31:0] reset_cnt_1_fu_544_p2;
wire   [0:0] tmp_4_fu_550_p2;
wire   [0:0] not_s_fu_556_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_273;
reg    ap_condition_87;
reg    ap_condition_239;
reg    ap_condition_245;
reg    ap_condition_63;
reg    ap_condition_81;
reg    ap_condition_224;
reg    ap_condition_265;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_265)) begin
        if (((empty_n_fu_497_p1 == 1'd1) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_392 <= reset_app_conv_combine_l1_1_V_empty_n;
        end else if ((ap_phi_mux_reset_phi_fu_212_p4 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_392 <= ap_phi_mux_reset_phi_fu_212_p4;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_reset_1_reg_392 <= ap_phi_reg_pp0_iter0_reset_1_reg_392;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_2_ready_reg_196 <= ap_phi_mux_data_2_ready_be_phi_fu_471_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        data_2_ready_reg_196 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_3_ready_reg_184 <= ap_phi_mux_data_3_ready_be_phi_fu_458_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        data_3_ready_reg_184 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & ((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1)))) begin
        reset_cnt_fu_148 <= p_s_fu_569_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_cnt_fu_148 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        reset_reg_208 <= ap_phi_mux_reset_be_phi_fu_484_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reset_reg_208 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_data_2_ready_phi_fu_200_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_3_reg_594 <= empty_n_1_nbread_fu_158_p3_0;
        tmp_data_V_1_reg_600 <= app_conv_combine_l1_input_data_2_V_data_V_dout;
        tmp_eop_1_reg_606 <= app_conv_combine_l1_input_data_2_V_eop_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((empty_n_3_fu_501_p1 == 1'd1) & (ap_phi_mux_data_3_ready_phi_fu_188_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0)) | ((ap_phi_mux_data_2_ready_phi_fu_200_p4 == 1'd1) & (ap_phi_mux_data_3_ready_phi_fu_188_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0))))) begin
        empty_n_4_reg_612 <= empty_n_2_nbread_fu_166_p3_0;
        tmp_data_V_2_reg_617 <= app_conv_combine_l1_input_data_3_V_data_V_dout;
        tmp_eop_2_reg_623 <= app_conv_combine_l1_input_data_3_V_eop_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_reg_589 <= reset_app_conv_combine_l1_1_V_empty_n;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_data_2_1_reg_242 <= ap_phi_mux_input_data_2_1_be_phi_fu_432_p4;
        input_data_2_reg_253 <= ap_phi_mux_input_data_2_be_phi_fu_445_p4;
        input_data_3_1_reg_220 <= ap_phi_mux_input_data_3_1_be_phi_fu_406_p4;
        input_data_3_reg_231 <= ap_phi_mux_input_data_3_be_phi_fu_419_p4;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_273)) begin
        if (((empty_n_3_reg_594 == 1'd1) & (data_2_ready_reg_196 == 1'd0))) begin
            ap_phi_mux_data_2_ready_1_phi_fu_287_p4 = empty_n_3_reg_594;
        end else if ((data_2_ready_reg_196 == 1'd1)) begin
            ap_phi_mux_data_2_ready_1_phi_fu_287_p4 = data_2_ready_reg_196;
        end else begin
            ap_phi_mux_data_2_ready_1_phi_fu_287_p4 = ap_phi_reg_pp0_iter1_data_2_ready_1_reg_284;
        end
    end else begin
        ap_phi_mux_data_2_ready_1_phi_fu_287_p4 = ap_phi_reg_pp0_iter1_data_2_ready_1_reg_284;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_245)) begin
            ap_phi_mux_data_2_ready_2_phi_fu_382_p6 = empty_n_3_reg_594;
        end else if ((1'b1 == ap_condition_239)) begin
            ap_phi_mux_data_2_ready_2_phi_fu_382_p6 = ap_phi_mux_data_2_ready_1_phi_fu_287_p4;
        end else if ((1'b1 == ap_condition_87)) begin
            ap_phi_mux_data_2_ready_2_phi_fu_382_p6 = 1'd0;
        end else begin
            ap_phi_mux_data_2_ready_2_phi_fu_382_p6 = ap_phi_reg_pp0_iter1_data_2_ready_2_reg_379;
        end
    end else begin
        ap_phi_mux_data_2_ready_2_phi_fu_382_p6 = ap_phi_reg_pp0_iter1_data_2_ready_2_reg_379;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))) begin
            ap_phi_mux_data_2_ready_be_phi_fu_471_p4 = ap_phi_mux_data_2_ready_2_phi_fu_382_p6;
        end else if (((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1))) begin
            ap_phi_mux_data_2_ready_be_phi_fu_471_p4 = 1'd0;
        end else begin
            ap_phi_mux_data_2_ready_be_phi_fu_471_p4 = ap_phi_reg_pp0_iter1_data_2_ready_be_reg_467;
        end
    end else begin
        ap_phi_mux_data_2_ready_be_phi_fu_471_p4 = ap_phi_reg_pp0_iter1_data_2_ready_be_reg_467;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_data_2_ready_phi_fu_200_p4 = ap_phi_mux_data_2_ready_be_phi_fu_471_p4;
    end else begin
        ap_phi_mux_data_2_ready_phi_fu_200_p4 = data_2_ready_reg_196;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_245)) begin
            ap_phi_mux_data_3_ready_1_phi_fu_369_p6 = data_3_ready_reg_184;
        end else if ((1'b1 == ap_condition_239)) begin
            ap_phi_mux_data_3_ready_1_phi_fu_369_p6 = empty_n_4_reg_612;
        end else if ((1'b1 == ap_condition_87)) begin
            ap_phi_mux_data_3_ready_1_phi_fu_369_p6 = 1'd0;
        end else begin
            ap_phi_mux_data_3_ready_1_phi_fu_369_p6 = ap_phi_reg_pp0_iter1_data_3_ready_1_reg_366;
        end
    end else begin
        ap_phi_mux_data_3_ready_1_phi_fu_369_p6 = ap_phi_reg_pp0_iter1_data_3_ready_1_reg_366;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))) begin
            ap_phi_mux_data_3_ready_be_phi_fu_458_p4 = ap_phi_mux_data_3_ready_1_phi_fu_369_p6;
        end else if (((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1))) begin
            ap_phi_mux_data_3_ready_be_phi_fu_458_p4 = 1'd0;
        end else begin
            ap_phi_mux_data_3_ready_be_phi_fu_458_p4 = ap_phi_reg_pp0_iter1_data_3_ready_be_reg_454;
        end
    end else begin
        ap_phi_mux_data_3_ready_be_phi_fu_458_p4 = ap_phi_reg_pp0_iter1_data_3_ready_be_reg_454;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_data_3_ready_phi_fu_188_p4 = ap_phi_mux_data_3_ready_be_phi_fu_458_p4;
    end else begin
        ap_phi_mux_data_3_ready_phi_fu_188_p4 = data_3_ready_reg_184;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_273)) begin
        if (((empty_n_3_reg_594 == 1'd1) & (data_2_ready_reg_196 == 1'd0))) begin
            ap_phi_mux_input_data_2_0_1_phi_fu_277_p4 = tmp_data_V_1_reg_600;
        end else if ((data_2_ready_reg_196 == 1'd1)) begin
            ap_phi_mux_input_data_2_0_1_phi_fu_277_p4 = input_data_2_reg_253;
        end else begin
            ap_phi_mux_input_data_2_0_1_phi_fu_277_p4 = ap_phi_reg_pp0_iter1_input_data_2_0_1_reg_274;
        end
    end else begin
        ap_phi_mux_input_data_2_0_1_phi_fu_277_p4 = ap_phi_reg_pp0_iter1_input_data_2_0_1_reg_274;
    end
end

always @ (*) begin
    if (((empty_n_3_reg_594 == 1'd0) & (data_2_ready_reg_196 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_input_data_2_0_2_phi_fu_356_p6 = tmp_data_V_1_reg_600;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)))) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_3_reg_594 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_2_ready_reg_196 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)))))) begin
        ap_phi_mux_input_data_2_0_2_phi_fu_356_p6 = ap_phi_mux_input_data_2_0_1_phi_fu_277_p4;
    end else begin
        ap_phi_mux_input_data_2_0_2_phi_fu_356_p6 = ap_phi_reg_pp0_iter1_input_data_2_0_2_reg_353;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_273)) begin
        if (((empty_n_3_reg_594 == 1'd1) & (data_2_ready_reg_196 == 1'd0))) begin
            ap_phi_mux_input_data_2_1_1_phi_fu_267_p4 = tmp_eop_1_reg_606;
        end else if ((data_2_ready_reg_196 == 1'd1)) begin
            ap_phi_mux_input_data_2_1_1_phi_fu_267_p4 = input_data_2_1_reg_242;
        end else begin
            ap_phi_mux_input_data_2_1_1_phi_fu_267_p4 = ap_phi_reg_pp0_iter1_input_data_2_1_1_reg_264;
        end
    end else begin
        ap_phi_mux_input_data_2_1_1_phi_fu_267_p4 = ap_phi_reg_pp0_iter1_input_data_2_1_1_reg_264;
    end
end

always @ (*) begin
    if (((empty_n_3_reg_594 == 1'd0) & (data_2_ready_reg_196 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_input_data_2_1_2_phi_fu_343_p6 = tmp_eop_1_reg_606;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)))) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_3_reg_594 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_2_ready_reg_196 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)))))) begin
        ap_phi_mux_input_data_2_1_2_phi_fu_343_p6 = ap_phi_mux_input_data_2_1_1_phi_fu_267_p4;
    end else begin
        ap_phi_mux_input_data_2_1_2_phi_fu_343_p6 = ap_phi_reg_pp0_iter1_input_data_2_1_2_reg_340;
    end
end

always @ (*) begin
    if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_input_data_2_1_be_phi_fu_432_p4 = ap_phi_mux_input_data_2_1_2_phi_fu_343_p6;
    end else begin
        ap_phi_mux_input_data_2_1_be_phi_fu_432_p4 = ap_phi_reg_pp0_iter1_input_data_2_1_be_reg_428;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))) begin
            ap_phi_mux_input_data_2_be_phi_fu_445_p4 = ap_phi_mux_input_data_2_0_2_phi_fu_356_p6;
        end else if (((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1))) begin
            ap_phi_mux_input_data_2_be_phi_fu_445_p4 = 128'd0;
        end else begin
            ap_phi_mux_input_data_2_be_phi_fu_445_p4 = ap_phi_reg_pp0_iter1_input_data_2_be_reg_441;
        end
    end else begin
        ap_phi_mux_input_data_2_be_phi_fu_445_p4 = ap_phi_reg_pp0_iter1_input_data_2_be_reg_441;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_224)) begin
            ap_phi_mux_input_data_3_0_1_phi_fu_307_p4 = tmp_data_V_2_reg_617;
        end else if ((1'b1 == ap_condition_81)) begin
            ap_phi_mux_input_data_3_0_1_phi_fu_307_p4 = input_data_3_reg_231;
        end else begin
            ap_phi_mux_input_data_3_0_1_phi_fu_307_p4 = ap_phi_reg_pp0_iter1_input_data_3_0_1_reg_304;
        end
    end else begin
        ap_phi_mux_input_data_3_0_1_phi_fu_307_p4 = ap_phi_reg_pp0_iter1_input_data_3_0_1_reg_304;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_245)) begin
            ap_phi_mux_input_data_3_0_2_phi_fu_330_p6 = input_data_3_reg_231;
        end else if ((1'b1 == ap_condition_239)) begin
            ap_phi_mux_input_data_3_0_2_phi_fu_330_p6 = tmp_data_V_2_reg_617;
        end else if ((1'b1 == ap_condition_87)) begin
            ap_phi_mux_input_data_3_0_2_phi_fu_330_p6 = ap_phi_mux_input_data_3_0_1_phi_fu_307_p4;
        end else begin
            ap_phi_mux_input_data_3_0_2_phi_fu_330_p6 = ap_phi_reg_pp0_iter1_input_data_3_0_2_reg_327;
        end
    end else begin
        ap_phi_mux_input_data_3_0_2_phi_fu_330_p6 = ap_phi_reg_pp0_iter1_input_data_3_0_2_reg_327;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_224)) begin
            ap_phi_mux_input_data_3_1_1_phi_fu_297_p4 = tmp_eop_2_reg_623;
        end else if ((1'b1 == ap_condition_81)) begin
            ap_phi_mux_input_data_3_1_1_phi_fu_297_p4 = input_data_3_1_reg_220;
        end else begin
            ap_phi_mux_input_data_3_1_1_phi_fu_297_p4 = ap_phi_reg_pp0_iter1_input_data_3_1_1_reg_294;
        end
    end else begin
        ap_phi_mux_input_data_3_1_1_phi_fu_297_p4 = ap_phi_reg_pp0_iter1_input_data_3_1_1_reg_294;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if ((1'b1 == ap_condition_245)) begin
            ap_phi_mux_input_data_3_1_2_phi_fu_317_p6 = input_data_3_1_reg_220;
        end else if ((1'b1 == ap_condition_239)) begin
            ap_phi_mux_input_data_3_1_2_phi_fu_317_p6 = tmp_eop_2_reg_623;
        end else if ((1'b1 == ap_condition_87)) begin
            ap_phi_mux_input_data_3_1_2_phi_fu_317_p6 = ap_phi_mux_input_data_3_1_1_phi_fu_297_p4;
        end else begin
            ap_phi_mux_input_data_3_1_2_phi_fu_317_p6 = ap_phi_reg_pp0_iter1_input_data_3_1_2_reg_314;
        end
    end else begin
        ap_phi_mux_input_data_3_1_2_phi_fu_317_p6 = ap_phi_reg_pp0_iter1_input_data_3_1_2_reg_314;
    end
end

always @ (*) begin
    if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_input_data_3_1_be_phi_fu_406_p4 = ap_phi_mux_input_data_3_1_2_phi_fu_317_p6;
    end else begin
        ap_phi_mux_input_data_3_1_be_phi_fu_406_p4 = ap_phi_reg_pp0_iter1_input_data_3_1_be_reg_402;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))) begin
            ap_phi_mux_input_data_3_be_phi_fu_419_p4 = ap_phi_mux_input_data_3_0_2_phi_fu_330_p6;
        end else if (((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1))) begin
            ap_phi_mux_input_data_3_be_phi_fu_419_p4 = 128'd0;
        end else begin
            ap_phi_mux_input_data_3_be_phi_fu_419_p4 = ap_phi_reg_pp0_iter1_input_data_3_be_reg_415;
        end
    end else begin
        ap_phi_mux_input_data_3_be_phi_fu_419_p4 = ap_phi_reg_pp0_iter1_input_data_3_be_reg_415;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_63)) begin
        if (((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))) begin
            ap_phi_mux_reset_be_phi_fu_484_p4 = 1'd0;
        end else if (((empty_n_reg_589 == 1'd1) | (reset_reg_208 == 1'd1))) begin
            ap_phi_mux_reset_be_phi_fu_484_p4 = p_reset_1_fu_562_p2;
        end else begin
            ap_phi_mux_reset_be_phi_fu_484_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_480;
        end
    end else begin
        ap_phi_mux_reset_be_phi_fu_484_p4 = ap_phi_reg_pp0_iter1_reset_be_reg_480;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_reset_phi_fu_212_p4 = ap_phi_mux_reset_be_phi_fu_484_p4;
    end else begin
        ap_phi_mux_reset_phi_fu_212_p4 = reset_reg_208;
    end
end

always @ (*) begin
    if (((ap_phi_mux_data_2_ready_phi_fu_200_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((app_conv_combine_l1_input_data_2_V_eop_empty_n & app_conv_combine_l1_input_data_2_V_data_V_empty_n) == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        app_conv_combine_l1_input_data_2_V_eop0_update = 1'b1;
    end else begin
        app_conv_combine_l1_input_data_2_V_eop0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ((app_conv_combine_l1_input_data_3_V_eop_empty_n & app_conv_combine_l1_input_data_3_V_data_V_empty_n) == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (((empty_n_3_fu_501_p1 == 1'd1) & (ap_phi_mux_data_3_ready_phi_fu_188_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0)) | ((ap_phi_mux_data_2_ready_phi_fu_200_p4 == 1'd1) & (ap_phi_mux_data_3_ready_phi_fu_188_p4 == 1'd0) & (ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (empty_n_fu_497_p1 == 1'd0))))) begin
        app_conv_combine_l1_input_data_3_V_eop0_update = 1'b1;
    end else begin
        app_conv_combine_l1_input_data_3_V_eop0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))))) begin
        app_conv_combine_l2_input_data_1_V_data_V_blk_n = app_conv_combine_l2_input_data_1_V_data_V_full_n;
    end else begin
        app_conv_combine_l2_input_data_1_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op54_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        app_conv_combine_l2_input_data_1_V_eop1_update = 1'b1;
    end else begin
        app_conv_combine_l2_input_data_1_V_eop1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0))))) begin
        app_conv_combine_l2_input_data_1_V_eop_blk_n = app_conv_combine_l2_input_data_1_V_eop_full_n;
    end else begin
        app_conv_combine_l2_input_data_1_V_eop_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_phi_mux_reset_phi_fu_212_p4 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (reset_app_conv_combine_l1_1_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        reset_app_conv_combine_l1_1_V_read = 1'b1;
    end else begin
        reset_app_conv_combine_l1_1_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((app_conv_combine_l2_input_data_1_V_eop1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op54_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((app_conv_combine_l2_input_data_1_V_eop1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op54_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((app_conv_combine_l2_input_data_1_V_eop1_status == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op54_write_state3 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((app_conv_combine_l2_input_data_1_V_eop1_status == 1'b0) & (ap_predicate_op54_write_state3 == 1'b1));
end

always @ (*) begin
    ap_condition_224 = (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)));
end

always @ (*) begin
    ap_condition_239 = (((empty_n_3_reg_594 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_2_ready_reg_196 == 1'd1) & (empty_n_4_reg_612 == 1'd0) & (data_3_ready_reg_184 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)));
end

always @ (*) begin
    ap_condition_245 = ((empty_n_3_reg_594 == 1'd0) & (data_2_ready_reg_196 == 1'd0) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0));
end

always @ (*) begin
    ap_condition_265 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_273 = ((empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_63 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_81 = (((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)));
end

always @ (*) begin
    ap_condition_87 = (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_reset_1_reg_392 = 'bx;

assign ap_phi_reg_pp0_iter1_data_2_ready_1_reg_284 = 'bx;

assign ap_phi_reg_pp0_iter1_data_2_ready_2_reg_379 = 'bx;

assign ap_phi_reg_pp0_iter1_data_2_ready_be_reg_467 = 'bx;

assign ap_phi_reg_pp0_iter1_data_3_ready_1_reg_366 = 'bx;

assign ap_phi_reg_pp0_iter1_data_3_ready_be_reg_454 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_0_1_reg_274 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_0_2_reg_353 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_1_1_reg_264 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_1_2_reg_340 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_1_be_reg_428 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_2_be_reg_441 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_0_1_reg_304 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_0_2_reg_327 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_1_1_reg_294 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_1_2_reg_314 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_1_be_reg_402 = 'bx;

assign ap_phi_reg_pp0_iter1_input_data_3_be_reg_415 = 'bx;

assign ap_phi_reg_pp0_iter1_reset_be_reg_480 = 'bx;

always @ (*) begin
    ap_predicate_op54_write_state3 = (((empty_n_4_reg_612 == 1'd1) & (empty_n_3_reg_594 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_3_reg_594 == 1'd1) & (data_3_ready_reg_184 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((empty_n_4_reg_612 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)) | ((data_3_ready_reg_184 == 1'd1) & (data_2_ready_reg_196 == 1'd1) & (empty_n_reg_589 == 1'd0) & (reset_reg_208 == 1'd0)));
end

assign ap_ready = 1'b0;

assign app_conv_combine_l1_input_data_2_V_data_V_read = app_conv_combine_l1_input_data_2_V_eop0_update;

assign app_conv_combine_l1_input_data_2_V_eop_read = app_conv_combine_l1_input_data_2_V_eop0_update;

assign app_conv_combine_l1_input_data_3_V_data_V_read = app_conv_combine_l1_input_data_3_V_eop0_update;

assign app_conv_combine_l1_input_data_3_V_eop_read = app_conv_combine_l1_input_data_3_V_eop0_update;

assign app_conv_combine_l2_input_data_1_V_data_V_din = {{ap_phi_mux_input_data_3_0_1_phi_fu_307_p4}, {ap_phi_mux_input_data_2_0_1_phi_fu_277_p4}};

assign app_conv_combine_l2_input_data_1_V_data_V_write = app_conv_combine_l2_input_data_1_V_eop1_update;

assign app_conv_combine_l2_input_data_1_V_eop1_status = (app_conv_combine_l2_input_data_1_V_eop_full_n & app_conv_combine_l2_input_data_1_V_data_V_full_n);

assign app_conv_combine_l2_input_data_1_V_eop_din = (ap_phi_mux_input_data_3_1_1_phi_fu_297_p4 | ap_phi_mux_input_data_2_1_1_phi_fu_267_p4);

assign app_conv_combine_l2_input_data_1_V_eop_write = app_conv_combine_l2_input_data_1_V_eop1_update;

assign empty_n_1_nbread_fu_158_p3_0 = (app_conv_combine_l1_input_data_2_V_eop_empty_n & app_conv_combine_l1_input_data_2_V_data_V_empty_n);

assign empty_n_2_nbread_fu_166_p3_0 = (app_conv_combine_l1_input_data_3_V_eop_empty_n & app_conv_combine_l1_input_data_3_V_data_V_empty_n);

assign empty_n_3_fu_501_p1 = empty_n_1_nbread_fu_158_p3_0;

assign empty_n_fu_497_p1 = reset_app_conv_combine_l1_1_V_empty_n;

assign not_s_fu_556_p2 = (tmp_4_fu_550_p2 ^ 1'd1);

assign p_reset_1_fu_562_p2 = (not_s_fu_556_p2 & ap_phi_reg_pp0_iter1_reset_1_reg_392);

assign p_s_fu_569_p3 = ((tmp_4_fu_550_p2[0:0] === 1'b1) ? 32'd0 : reset_cnt_1_fu_544_p2);

assign reset_cnt_1_fu_544_p2 = (reset_cnt_fu_148 + 32'd1);

assign tmp_4_fu_550_p2 = ((reset_cnt_1_fu_544_p2 == 32'd2048) ? 1'b1 : 1'b0);

endmodule //app_conv_combine_l1_1
