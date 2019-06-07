// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.op
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pipe0_data_handler,hls_ip_2017_4_op,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.616000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=370,HLS_SYN_LUT=476}" *)

module pipe0_data_handler (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
ap_continue,
        ap_idle,
        ap_ready,
        kbuf_addrs_V_dout,
        kbuf_addrs_V_empty_n,
        kbuf_addrs_V_read,
        reqs_incoming_V_sector_off_dout,
        reqs_incoming_V_sector_off_empty_n,
        reqs_incoming_V_sector_off_read,
        reqs_incoming_V_sector_num_dout,
        reqs_incoming_V_sector_num_empty_n,
        reqs_incoming_V_sector_num_read,
        reqs_incoming_V_tag_dout,
        reqs_incoming_V_tag_empty_n,
        reqs_incoming_V_tag_read,
        reqs_incoming_V_rw_dout,
        reqs_incoming_V_rw_empty_n,
        reqs_incoming_V_rw_read,
        host_dram_read_req_V_num_din,
        host_dram_read_req_V_num_full_n,
        host_dram_read_req_V_num_write,
        host_dram_read_req_V_addr_din,
        host_dram_read_req_V_addr_full_n,
        host_dram_read_req_V_addr_write,
        pcie_read_req_V_num_din,
        pcie_read_req_V_num_full_n,
        pcie_read_req_V_num_write,
        pcie_read_req_V_addr_din,
        pcie_read_req_V_addr_full_n,
        pcie_read_req_V_addr_write,
        rd_reqs_pipe0_write_V_sector_off_din,
        rd_reqs_pipe0_write_V_sector_off_full_n,
        rd_reqs_pipe0_write_V_sector_off_write,
        rd_reqs_pipe0_write_V_sector_num_din,
        rd_reqs_pipe0_write_V_sector_num_full_n,
        rd_reqs_pipe0_write_V_sector_num_write,
        rd_reqs_pipe0_write_V_tag_din,
        rd_reqs_pipe0_write_V_tag_full_n,
        rd_reqs_pipe0_write_V_tag_write,
        rd_reqs_pipe0_write_V_rw_din,
        rd_reqs_pipe0_write_V_rw_full_n,
        rd_reqs_pipe0_write_V_rw_write,
        wr_reqs_pipe0_write_V_sector_off_din,
        wr_reqs_pipe0_write_V_sector_off_full_n,
        wr_reqs_pipe0_write_V_sector_off_write,
        wr_reqs_pipe0_write_V_sector_num_din,
        wr_reqs_pipe0_write_V_sector_num_full_n,
        wr_reqs_pipe0_write_V_sector_num_write,
        wr_reqs_pipe0_write_V_tag_din,
        wr_reqs_pipe0_write_V_tag_full_n,
        wr_reqs_pipe0_write_V_tag_write,
        wr_reqs_pipe0_write_V_rw_din,
        wr_reqs_pipe0_write_V_rw_full_n,
        wr_reqs_pipe0_write_V_rw_write,
        rd_kbuf_addr_pipe0_write_V_din,
        rd_kbuf_addr_pipe0_write_V_full_n,
        rd_kbuf_addr_pipe0_write_V_write,
        wr_kbuf_addr_pipe0_write_V_din,
        wr_kbuf_addr_pipe0_write_V_full_n,
        wr_kbuf_addr_pipe0_write_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output ap_ready; output ap_continue;
input  [31:0] kbuf_addrs_V_dout;
input   kbuf_addrs_V_empty_n;
output   kbuf_addrs_V_read;
input  [31:0] reqs_incoming_V_sector_off_dout;
input   reqs_incoming_V_sector_off_empty_n;
output   reqs_incoming_V_sector_off_read;
input  [31:0] reqs_incoming_V_sector_num_dout;
input   reqs_incoming_V_sector_num_empty_n;
output   reqs_incoming_V_sector_num_read;
input  [31:0] reqs_incoming_V_tag_dout;
input   reqs_incoming_V_tag_empty_n;
output   reqs_incoming_V_tag_read;
input   reqs_incoming_V_rw_dout;
input   reqs_incoming_V_rw_empty_n;
output   reqs_incoming_V_rw_read;
output  [7:0] host_dram_read_req_V_num_din;
input   host_dram_read_req_V_num_full_n;
output   host_dram_read_req_V_num_write;
output  [63:0] host_dram_read_req_V_addr_din;
input   host_dram_read_req_V_addr_full_n;
output   host_dram_read_req_V_addr_write;
output  [7:0] pcie_read_req_V_num_din;
input   pcie_read_req_V_num_full_n;
output   pcie_read_req_V_num_write;
output  [63:0] pcie_read_req_V_addr_din;
input   pcie_read_req_V_addr_full_n;
output   pcie_read_req_V_addr_write;
output  [31:0] rd_reqs_pipe0_write_V_sector_off_din;
input   rd_reqs_pipe0_write_V_sector_off_full_n;
output   rd_reqs_pipe0_write_V_sector_off_write;
output  [31:0] rd_reqs_pipe0_write_V_sector_num_din;
input   rd_reqs_pipe0_write_V_sector_num_full_n;
output   rd_reqs_pipe0_write_V_sector_num_write;
output  [31:0] rd_reqs_pipe0_write_V_tag_din;
input   rd_reqs_pipe0_write_V_tag_full_n;
output   rd_reqs_pipe0_write_V_tag_write;
output   rd_reqs_pipe0_write_V_rw_din;
input   rd_reqs_pipe0_write_V_rw_full_n;
output   rd_reqs_pipe0_write_V_rw_write;
output  [31:0] wr_reqs_pipe0_write_V_sector_off_din;
input   wr_reqs_pipe0_write_V_sector_off_full_n;
output   wr_reqs_pipe0_write_V_sector_off_write;
output  [31:0] wr_reqs_pipe0_write_V_sector_num_din;
input   wr_reqs_pipe0_write_V_sector_num_full_n;
output   wr_reqs_pipe0_write_V_sector_num_write;
output  [31:0] wr_reqs_pipe0_write_V_tag_din;
input   wr_reqs_pipe0_write_V_tag_full_n;
output   wr_reqs_pipe0_write_V_tag_write;
output   wr_reqs_pipe0_write_V_rw_din;
input   wr_reqs_pipe0_write_V_rw_full_n;
output   wr_reqs_pipe0_write_V_rw_write;
output  [63:0] rd_kbuf_addr_pipe0_write_V_din;
input   rd_kbuf_addr_pipe0_write_V_full_n;
output   rd_kbuf_addr_pipe0_write_V_write;
output  [63:0] wr_kbuf_addr_pipe0_write_V_din;
input   wr_kbuf_addr_pipe0_write_V_full_n;
output   wr_kbuf_addr_pipe0_write_V_write;

reg ap_idle;
reg kbuf_addrs_V_read;
reg rd_kbuf_addr_pipe0_write_V_write;
reg wr_kbuf_addr_pipe0_write_V_write;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    host_dram_read_req_V_num_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] start_reg_482;
reg   [0:0] ap_reg_pp0_iter1_start_reg_482;
reg   [0:0] has_inflight_load_reg_795;
reg   [0:0] ap_reg_pp0_iter1_has_inflight_load_reg_795;
reg   [0:0] tmp_rw_load_reg_803;
reg   [0:0] empty_n_3_reg_799;
reg   [0:0] ap_reg_pp0_iter1_empty_n_3_reg_799;
reg    host_dram_read_req_V_addr_blk_n;
reg    pcie_read_req_V_num_blk_n;
reg    pcie_read_req_V_addr_blk_n;
reg    rd_reqs_pipe0_write_V_sector_off_blk_n;
reg    rd_reqs_pipe0_write_V_sector_num_blk_n;
reg    rd_reqs_pipe0_write_V_tag_blk_n;
reg    rd_reqs_pipe0_write_V_rw_blk_n;
reg    wr_reqs_pipe0_write_V_sector_off_blk_n;
reg    wr_reqs_pipe0_write_V_sector_num_blk_n;
reg    wr_reqs_pipe0_write_V_tag_blk_n;
reg    wr_reqs_pipe0_write_V_rw_blk_n;
reg    rd_kbuf_addr_pipe0_write_V_blk_n;
reg    wr_kbuf_addr_pipe0_write_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    host_dram_read_req_V_num1_status;
reg    ap_predicate_op126_write_state4;
wire    rd_reqs_pipe0_write_V_rw1_status;
wire    pcie_read_req_V_num1_status;
reg    ap_predicate_op134_write_state4;
wire    wr_reqs_pipe0_write_V_rw1_status;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] empty_n_fu_541_p1;
reg   [0:0] empty_n_reg_776;
reg   [0:0] ap_phi_mux_start_phi_fu_486_p4;
reg   [31:0] tmp_11_reg_780;
wire   [0:0] kbuf_addr_high_part_load_load_fu_549_p1;
reg   [0:0] kbuf_addr_high_part_load_reg_786;
reg   [31:0] kbuf_addr_idx_load_reg_790;
wire   [0:0] has_inflight_load_load_fu_571_p1;
wire   [0:0] empty_n_3_fu_574_p1;
wire   [0:0] tmp_rw_load_load_fu_665_p1;
reg   [31:0] tmp_sector_off_load_reg_807;
reg   [31:0] tmp_sector_num_load_reg_814;
reg   [31:0] tmp_tag_load_reg_822;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg   [5:0] kbuf_addr_arr_address0;
reg    kbuf_addr_arr_ce0;
reg    kbuf_addr_arr_we0;
wire   [63:0] kbuf_addr_arr_d0;
wire   [63:0] kbuf_addr_arr_q0;
reg   [0:0] ap_phi_mux_start_2_phi_fu_499_p6;
wire   [0:0] tmp_1_fu_658_p2;
reg   [0:0] ap_phi_reg_pp0_iter1_start_2_reg_494;
wire   [0:0] ap_phi_reg_pp0_iter0_start_2_reg_494;
wire   [63:0] tmp_6_fu_634_p1;
wire   [63:0] tmp_7_fu_677_p1;
wire   [63:0] tmp_8_fu_682_p1;
reg    reqs_incoming_V_rw0_update;
reg    ap_condition_299;
wire   [0:0] empty_n_2_nbread_fu_374_p5_0;
reg    host_dram_read_req_V_num1_update;
reg    ap_block_pp0_stage0_01001;
reg    rd_reqs_pipe0_write_V_rw1_update;
reg    pcie_read_req_V_num1_update;
reg    wr_reqs_pipe0_write_V_rw1_update;
reg   [31:0] kbuf_addr_idx_fu_332;
wire   [31:0] kbuf_addr_idx_1_fu_555_p2;
reg   [0:0] kbuf_addr_high_part_fu_336;
reg   [63:0] tmp_kbuf_addr_2_fu_340;
wire   [63:0] tmp_kbuf_addr_1_fu_625_p3;
wire   [63:0] tmp_kbuf_addr_fu_643_p3;
reg   [31:0] tmp_sector_off_fu_344;
reg   [31:0] tmp_sector_num_fu_348;
reg   [31:0] tmp_tag_fu_352;
reg   [0:0] tmp_rw_fu_356;
reg   [0:0] has_inflight_fu_360;
wire   [31:0] tmp_fu_606_p1;
wire   [31:0] tmp_2_fu_615_p4;
wire   [31:0] tmp_s_fu_610_p2;
wire   [40:0] read_req_addr_fu_687_p3;
wire   [4:0] tmp_9_fu_699_p1;
wire   [4:0] tmp_4_fu_711_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_284;
reg    ap_condition_229;
reg    ap_condition_236;
reg    ap_condition_259;
reg    ap_condition_504;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

pipe0_data_handler_kbuf_addr_arr #(
    .DataWidth( 64 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
kbuf_addr_arr_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(kbuf_addr_arr_address0),
    .ce0(kbuf_addr_arr_ce0),
    .we0(kbuf_addr_arr_we0),
    .d0(kbuf_addr_arr_d0),
    .q0(kbuf_addr_arr_q0)
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((empty_n_3_fu_574_p1 == 1'd1) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)) | ((has_inflight_load_load_fu_571_p1 == 1'd1) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_3_fu_574_p1 == 1'd0) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_start_2_reg_494 <= 1'd1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_start_2_reg_494 <= ap_phi_reg_pp0_iter0_start_2_reg_494;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_3_fu_574_p1 == 1'd0) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1))) begin
        has_inflight_fu_360 <= empty_n_2_nbread_fu_374_p5_0;
    end else if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((empty_n_3_fu_574_p1 == 1'd1) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)) | ((has_inflight_load_load_fu_571_p1 == 1'd1) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)))))) begin
        has_inflight_fu_360 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0) & (kbuf_addr_high_part_load_load_fu_549_p1 == 1'd1) & (empty_n_fu_541_p1 == 1'd1))) begin
        kbuf_addr_high_part_fu_336 <= 1'd0;
    end else if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (kbuf_addr_high_part_load_load_fu_549_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0) & (empty_n_fu_541_p1 == 1'd1)))) begin
        kbuf_addr_high_part_fu_336 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (kbuf_addr_high_part_load_load_fu_549_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0) & (empty_n_fu_541_p1 == 1'd1))) begin
        kbuf_addr_idx_fu_332 <= kbuf_addr_idx_1_fu_555_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        kbuf_addr_idx_fu_332 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        start_reg_482 <= ap_phi_mux_start_2_phi_fu_499_p6;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        start_reg_482 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_504)) begin
        if ((kbuf_addr_high_part_load_reg_786 == 1'd1)) begin
            tmp_kbuf_addr_2_fu_340 <= tmp_kbuf_addr_fu_643_p3;
        end else if ((kbuf_addr_high_part_load_reg_786 == 1'd0)) begin
            tmp_kbuf_addr_2_fu_340 <= tmp_kbuf_addr_1_fu_625_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_empty_n_3_reg_799 <= empty_n_3_reg_799;
        ap_reg_pp0_iter1_has_inflight_load_reg_795 <= has_inflight_load_reg_795;
        ap_reg_pp0_iter1_start_reg_482 <= start_reg_482;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1))) begin
        empty_n_3_reg_799 <= empty_n_2_nbread_fu_374_p5_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0))) begin
        empty_n_reg_776 <= kbuf_addrs_V_empty_n;
        tmp_11_reg_780 <= kbuf_addrs_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1))) begin
        has_inflight_load_reg_795 <= has_inflight_fu_360;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0) & (empty_n_fu_541_p1 == 1'd1))) begin
        kbuf_addr_high_part_load_reg_786 <= kbuf_addr_high_part_fu_336;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (kbuf_addr_high_part_load_load_fu_549_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0) & (empty_n_fu_541_p1 == 1'd1))) begin
        kbuf_addr_idx_load_reg_790 <= kbuf_addr_idx_fu_332;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_3_fu_574_p1 == 1'd0) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (empty_n_3_fu_574_p1 == 1'd1) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1)))) begin
        tmp_rw_fu_356 <= reqs_incoming_V_rw_dout;
        tmp_sector_num_fu_348 <= reqs_incoming_V_sector_num_dout;
        tmp_sector_off_fu_344 <= reqs_incoming_V_sector_off_dout;
        tmp_tag_fu_352 <= reqs_incoming_V_tag_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((empty_n_3_reg_799 == 1'd1) & (start_reg_482 == 1'd1)) | ((has_inflight_load_reg_795 == 1'd1) & (start_reg_482 == 1'd1))))) begin
        tmp_rw_load_reg_803 <= tmp_rw_fu_356;
        tmp_sector_num_load_reg_814 <= tmp_sector_num_fu_348;
        tmp_sector_off_load_reg_807 <= tmp_sector_off_fu_344;
        tmp_tag_load_reg_822 <= tmp_tag_fu_352;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (start_reg_482 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_start_2_phi_fu_499_p6 = tmp_1_fu_658_p2;
    end else begin
        ap_phi_mux_start_2_phi_fu_499_p6 = ap_phi_reg_pp0_iter1_start_2_reg_494;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_start_phi_fu_486_p4 = ap_phi_mux_start_2_phi_fu_499_p6;
    end else begin
        ap_phi_mux_start_phi_fu_486_p4 = start_reg_482;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        host_dram_read_req_V_addr_blk_n = host_dram_read_req_V_addr_full_n;
    end else begin
        host_dram_read_req_V_addr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op126_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        host_dram_read_req_V_num1_update = 1'b1;
    end else begin
        host_dram_read_req_V_num1_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        host_dram_read_req_V_num_blk_n = host_dram_read_req_V_num_full_n;
    end else begin
        host_dram_read_req_V_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_259)) begin
        if ((1'b1 == ap_condition_236)) begin
            kbuf_addr_arr_address0 = tmp_8_fu_682_p1;
        end else if ((1'b1 == ap_condition_229)) begin
            kbuf_addr_arr_address0 = tmp_7_fu_677_p1;
        end else if ((1'b1 == ap_condition_284)) begin
            kbuf_addr_arr_address0 = tmp_6_fu_634_p1;
        end else begin
            kbuf_addr_arr_address0 = 'bx;
        end
    end else begin
        kbuf_addr_arr_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (kbuf_addr_high_part_load_reg_786 == 1'd0) & (empty_n_reg_776 == 1'd1) & (start_reg_482 == 1'd0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((tmp_rw_load_load_fu_665_p1 == 1'd1) & (empty_n_3_reg_799 == 1'd1) & (start_reg_482 == 1'd1)) | ((tmp_rw_load_load_fu_665_p1 == 1'd1) & (has_inflight_load_reg_795 == 1'd1) & (start_reg_482 == 1'd1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((tmp_rw_load_load_fu_665_p1 == 1'd0) & (empty_n_3_reg_799 == 1'd1) & (start_reg_482 == 1'd1)) | ((tmp_rw_load_load_fu_665_p1 == 1'd0) & (has_inflight_load_reg_795 == 1'd1) & (start_reg_482 == 1'd1)))))) begin
        kbuf_addr_arr_ce0 = 1'b1;
    end else begin
        kbuf_addr_arr_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (kbuf_addr_high_part_load_reg_786 == 1'd0) & (empty_n_reg_776 == 1'd1) & (start_reg_482 == 1'd0))) begin
        kbuf_addr_arr_we0 = 1'b1;
    end else begin
        kbuf_addr_arr_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((kbuf_addrs_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd0))) begin
        kbuf_addrs_V_read = 1'b1;
    end else begin
        kbuf_addrs_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        pcie_read_req_V_addr_blk_n = pcie_read_req_V_addr_full_n;
    end else begin
        pcie_read_req_V_addr_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op134_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pcie_read_req_V_num1_update = 1'b1;
    end else begin
        pcie_read_req_V_num1_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        pcie_read_req_V_num_blk_n = pcie_read_req_V_num_full_n;
    end else begin
        pcie_read_req_V_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        rd_kbuf_addr_pipe0_write_V_blk_n = rd_kbuf_addr_pipe0_write_V_full_n;
    end else begin
        rd_kbuf_addr_pipe0_write_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op126_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rd_kbuf_addr_pipe0_write_V_write = 1'b1;
    end else begin
        rd_kbuf_addr_pipe0_write_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op126_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rd_reqs_pipe0_write_V_rw1_update = 1'b1;
    end else begin
        rd_reqs_pipe0_write_V_rw1_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        rd_reqs_pipe0_write_V_rw_blk_n = rd_reqs_pipe0_write_V_rw_full_n;
    end else begin
        rd_reqs_pipe0_write_V_rw_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        rd_reqs_pipe0_write_V_sector_num_blk_n = rd_reqs_pipe0_write_V_sector_num_full_n;
    end else begin
        rd_reqs_pipe0_write_V_sector_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        rd_reqs_pipe0_write_V_sector_off_blk_n = rd_reqs_pipe0_write_V_sector_off_full_n;
    end else begin
        rd_reqs_pipe0_write_V_sector_off_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        rd_reqs_pipe0_write_V_tag_blk_n = rd_reqs_pipe0_write_V_tag_full_n;
    end else begin
        rd_reqs_pipe0_write_V_tag_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_condition_299) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (has_inflight_load_load_fu_571_p1 == 1'd0) & (ap_phi_mux_start_phi_fu_486_p4 == 1'd1))) begin
        reqs_incoming_V_rw0_update = 1'b1;
    end else begin
        reqs_incoming_V_rw0_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        wr_kbuf_addr_pipe0_write_V_blk_n = wr_kbuf_addr_pipe0_write_V_full_n;
    end else begin
        wr_kbuf_addr_pipe0_write_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op134_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        wr_kbuf_addr_pipe0_write_V_write = 1'b1;
    end else begin
        wr_kbuf_addr_pipe0_write_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op134_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        wr_reqs_pipe0_write_V_rw1_update = 1'b1;
    end else begin
        wr_reqs_pipe0_write_V_rw1_update = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        wr_reqs_pipe0_write_V_rw_blk_n = wr_reqs_pipe0_write_V_rw_full_n;
    end else begin
        wr_reqs_pipe0_write_V_rw_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        wr_reqs_pipe0_write_V_sector_num_blk_n = wr_reqs_pipe0_write_V_sector_num_full_n;
    end else begin
        wr_reqs_pipe0_write_V_sector_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        wr_reqs_pipe0_write_V_sector_off_blk_n = wr_reqs_pipe0_write_V_sector_off_full_n;
    end else begin
        wr_reqs_pipe0_write_V_sector_off_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1))))) begin
        wr_reqs_pipe0_write_V_tag_blk_n = wr_reqs_pipe0_write_V_tag_full_n;
    end else begin
        wr_reqs_pipe0_write_V_tag_blk_n = 1'b1;
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
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (((wr_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((wr_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((pcie_read_req_V_num1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((rd_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((rd_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((host_dram_read_req_V_num1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (((wr_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((wr_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((pcie_read_req_V_num1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((rd_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((rd_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((host_dram_read_req_V_num1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (((wr_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((wr_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((pcie_read_req_V_num1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((rd_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((rd_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((host_dram_read_req_V_num1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1))));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = (((wr_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((wr_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((pcie_read_req_V_num1_status == 1'b0) & (ap_predicate_op134_write_state4 == 1'b1)) | ((rd_reqs_pipe0_write_V_rw1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((rd_kbuf_addr_pipe0_write_V_full_n == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)) | ((host_dram_read_req_V_num1_status == 1'b0) & (ap_predicate_op126_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_condition_229 = (((tmp_rw_load_load_fu_665_p1 == 1'd0) & (empty_n_3_reg_799 == 1'd1) & (start_reg_482 == 1'd1)) | ((tmp_rw_load_load_fu_665_p1 == 1'd0) & (has_inflight_load_reg_795 == 1'd1) & (start_reg_482 == 1'd1)));
end

always @ (*) begin
    ap_condition_236 = (((tmp_rw_load_load_fu_665_p1 == 1'd1) & (empty_n_3_reg_799 == 1'd1) & (start_reg_482 == 1'd1)) | ((tmp_rw_load_load_fu_665_p1 == 1'd1) & (has_inflight_load_reg_795 == 1'd1) & (start_reg_482 == 1'd1)));
end

always @ (*) begin
    ap_condition_259 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_condition_284 = ((kbuf_addr_high_part_load_reg_786 == 1'd0) & (empty_n_reg_776 == 1'd1) & (start_reg_482 == 1'd0));
end

always @ (*) begin
    ap_condition_299 = ((reqs_incoming_V_tag_empty_n & reqs_incoming_V_sector_off_empty_n & reqs_incoming_V_sector_num_empty_n & reqs_incoming_V_rw_empty_n) == 1'b1);
end

always @ (*) begin
    ap_condition_504 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (empty_n_reg_776 == 1'd1) & (start_reg_482 == 1'd0));
end

assign ap_done = 1'b0;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_start_2_reg_494 = 'bx;

always @ (*) begin
    ap_predicate_op126_write_state4 = (((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd0) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)));
end

always @ (*) begin
    ap_predicate_op134_write_state4 = (((ap_reg_pp0_iter1_empty_n_3_reg_799 == 1'd1) & (tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)) | ((tmp_rw_load_reg_803 == 1'd1) & (ap_reg_pp0_iter1_has_inflight_load_reg_795 == 1'd1) & (ap_reg_pp0_iter1_start_reg_482 == 1'd1)));
end

assign ap_ready = 1'b0;

assign empty_n_2_nbread_fu_374_p5_0 = (reqs_incoming_V_tag_empty_n & reqs_incoming_V_sector_off_empty_n & reqs_incoming_V_sector_num_empty_n & reqs_incoming_V_rw_empty_n);

assign empty_n_3_fu_574_p1 = empty_n_2_nbread_fu_374_p5_0;

assign empty_n_fu_541_p1 = kbuf_addrs_V_empty_n;

assign has_inflight_load_load_fu_571_p1 = has_inflight_fu_360;

assign host_dram_read_req_V_addr_din = read_req_addr_fu_687_p3;

assign host_dram_read_req_V_addr_write = host_dram_read_req_V_num1_update;

assign host_dram_read_req_V_num1_status = (host_dram_read_req_V_num_full_n & host_dram_read_req_V_addr_full_n);

assign host_dram_read_req_V_num_din = {{tmp_9_fu_699_p1}, {3'd0}};

assign host_dram_read_req_V_num_write = host_dram_read_req_V_num1_update;

assign kbuf_addr_arr_d0 = {{tmp_2_fu_615_p4}, {tmp_s_fu_610_p2}};

assign kbuf_addr_high_part_load_load_fu_549_p1 = kbuf_addr_high_part_fu_336;

assign kbuf_addr_idx_1_fu_555_p2 = (32'd1 + kbuf_addr_idx_fu_332);

assign pcie_read_req_V_addr_din = kbuf_addr_arr_q0;

assign pcie_read_req_V_addr_write = pcie_read_req_V_num1_update;

assign pcie_read_req_V_num1_status = (pcie_read_req_V_num_full_n & pcie_read_req_V_addr_full_n);

assign pcie_read_req_V_num_din = {{tmp_4_fu_711_p1}, {3'd0}};

assign pcie_read_req_V_num_write = pcie_read_req_V_num1_update;

assign rd_kbuf_addr_pipe0_write_V_din = kbuf_addr_arr_q0;

assign rd_reqs_pipe0_write_V_rw1_status = (rd_reqs_pipe0_write_V_tag_full_n & rd_reqs_pipe0_write_V_sector_off_full_n & rd_reqs_pipe0_write_V_sector_num_full_n & rd_reqs_pipe0_write_V_rw_full_n);

assign rd_reqs_pipe0_write_V_rw_din = 1'd0;

assign rd_reqs_pipe0_write_V_rw_write = rd_reqs_pipe0_write_V_rw1_update;

assign rd_reqs_pipe0_write_V_sector_num_din = tmp_sector_num_load_reg_814;

assign rd_reqs_pipe0_write_V_sector_num_write = rd_reqs_pipe0_write_V_rw1_update;

assign rd_reqs_pipe0_write_V_sector_off_din = tmp_sector_off_load_reg_807;

assign rd_reqs_pipe0_write_V_sector_off_write = rd_reqs_pipe0_write_V_rw1_update;

assign rd_reqs_pipe0_write_V_tag_din = tmp_tag_load_reg_822;

assign rd_reqs_pipe0_write_V_tag_write = rd_reqs_pipe0_write_V_rw1_update;

assign read_req_addr_fu_687_p3 = {{tmp_sector_off_load_reg_807}, {9'd0}};

assign reqs_incoming_V_rw_read = reqs_incoming_V_rw0_update;

assign reqs_incoming_V_sector_num_read = reqs_incoming_V_rw0_update;

assign reqs_incoming_V_sector_off_read = reqs_incoming_V_rw0_update;

assign reqs_incoming_V_tag_read = reqs_incoming_V_rw0_update;

assign tmp_1_fu_658_p2 = ((kbuf_addr_idx_fu_332 == 32'd64) ? 1'b1 : 1'b0);

assign tmp_2_fu_615_p4 = {{tmp_kbuf_addr_2_fu_340[63:32]}};

assign tmp_4_fu_711_p1 = tmp_sector_num_load_reg_814[4:0];

assign tmp_6_fu_634_p1 = kbuf_addr_idx_load_reg_790;

assign tmp_7_fu_677_p1 = tmp_tag_fu_352;

assign tmp_8_fu_682_p1 = tmp_tag_fu_352;

assign tmp_9_fu_699_p1 = tmp_sector_num_load_reg_814[4:0];

assign tmp_fu_606_p1 = tmp_kbuf_addr_2_fu_340[31:0];

assign tmp_kbuf_addr_1_fu_625_p3 = {{tmp_2_fu_615_p4}, {tmp_s_fu_610_p2}};

assign tmp_kbuf_addr_fu_643_p3 = {{tmp_11_reg_780}, {32'd0}};

assign tmp_rw_load_load_fu_665_p1 = tmp_rw_fu_356;

assign tmp_s_fu_610_p2 = (tmp_fu_606_p1 | tmp_11_reg_780);

assign wr_kbuf_addr_pipe0_write_V_din = kbuf_addr_arr_q0;

assign wr_reqs_pipe0_write_V_rw1_status = (wr_reqs_pipe0_write_V_tag_full_n & wr_reqs_pipe0_write_V_sector_off_full_n & wr_reqs_pipe0_write_V_sector_num_full_n & wr_reqs_pipe0_write_V_rw_full_n);

assign wr_reqs_pipe0_write_V_rw_din = 1'd1;

assign wr_reqs_pipe0_write_V_rw_write = wr_reqs_pipe0_write_V_rw1_update;

assign wr_reqs_pipe0_write_V_sector_num_din = tmp_sector_num_load_reg_814;

assign wr_reqs_pipe0_write_V_sector_num_write = wr_reqs_pipe0_write_V_rw1_update;

assign wr_reqs_pipe0_write_V_sector_off_din = tmp_sector_off_load_reg_807;

assign wr_reqs_pipe0_write_V_sector_off_write = wr_reqs_pipe0_write_V_rw1_update;

assign wr_reqs_pipe0_write_V_tag_din = tmp_tag_load_reg_822;

assign wr_reqs_pipe0_write_V_tag_write = wr_reqs_pipe0_write_V_rw1_update;

endmodule //pipe0_data_handler
