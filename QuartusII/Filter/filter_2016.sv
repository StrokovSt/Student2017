//-----------------------------------------------------------------------------
// Title       : filter_2016 (top level)
//-----------------------------------------------------------------------------
// File        : filter_2015.sv
// Company     : INP SB RAS
// Created     : 03/11/2014
// Created by  : Epshteyn Leonid
//-----------------------------------------------------------------------------
// Description : filter_2016
//-----------------------------------------------------------------------------
// Revision    : 2.0
//-----------------------------------------------------------------------------
// Copyright (c) 2016 BINP SB RAS
// This work may not be copied, modified, re-published, uploaded, executed, or
// distributed in any way, in any medium, whether in whole or in part, without
// prior written permission from INP SB RAS.
//-----------------------------------------------------------------------------
// list of modules
//-----------------------------------------------------------------------------
/*  exp_sig_gen:
 *  	ram_exp_sig_gen,
 *  	rom_exp_sig_gen*/
//-----------------------------------------------------------------------------
import package_settings::*;
//-----------------------------------------------------------------------------
module filter_2016 (
//-----------------------------------------------------------------------------
// Input Ports
//-----------------------------------------------------------------------------
	input  wire                                              reset,
	input  wire                                              clk,
//-----------------------------------------------------------------------------
	input  wire                                              test_overlay,
	input  wire                                              test_rate,
	input  wire [SIZE_DELAY-1:0]                             test_delay,
//-----------------------------------------------------------------------------
// Output Ports
//-----------------------------------------------------------------------------
	output wire [SIZE_ADC_DATA-1:0]                          output_data,
//-----------------------------------------------------------------------------
	output wire [SIZE_ADC_DATA-1:0]                          output_data_exp_sig_gen,
//-----------------------------------------------------------------------------
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v1_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v1_2,
	output wire [SIZE_FILTER_DATA-1:0]            				output_data_v2_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v2_2,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v3_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v3_2,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v4_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v4_2,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v5_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v5_2,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v6_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v6_2,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v7_1,
	output wire [SIZE_FILTER_DATA-1:0]                       output_data_v7_2);
//-----------------------------------------------------------------------------
// Signal declarations
//-----------------------------------------------------------------------------
// ExpSigGen
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Signal Section
//-----------------------------------------------------------------------------
	assign output_data                                       = output_data_exp_sig_gen;
//-----------------------------------------------------------------------------
// Sub Module Section
//-----------------------------------------------------------------------------
	exp_sig_gen ExpSigGen (
		.clk                                                  (clk),
		.reset                                                (reset),
		.overlay                                              (test_overlay),
		.rate                                                 (test_rate),
		.delay                                                (test_delay),
		.output_data                                          (output_data_exp_sig_gen));

	v1_filter_1 FilterV1_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v1_1));
	v1_filter_2 FilterV1_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v1_2));

	v2_filter_1 FilterV2_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v2_1));
	v2_filter_2 FilterV2_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v2_2));

	v3_filter_1 FilterV3_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v3_1));
	v3_filter_2 FilterV3_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v3_2));

	v4_filter_1 FilterV4_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v4_1));
		
	 v4_filter_2 FilterV4_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v4_2));

	v5_filter_1 FilterV5_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v5_1));
	v5_filter_2 FilterV5_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v5_2));

	v6_filter_1 FilterV6_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v6_1));
	v6_filter_2 FilterV6_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v6_2));

	v7_filter_1 FilterV7_1 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v7_1));
	v7_filter_2 FilterV7_2 (
		.clk                                                  (clk),
		.reset                                                (reset),
		.input_data                                           (output_data_exp_sig_gen),
		.output_data                                          (output_data_v7_2));
//-----------------------------------------------------------------------------
endmodule
