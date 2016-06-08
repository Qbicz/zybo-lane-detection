// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Sun Jun 05 09:18:43 2016
// Host        : Filip-550p7c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/Teczka/8
//               semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.v}
// Design      : Mnozarka
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0,Vivado 2015.1" *)
module Mnozarka(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[9:0],B[10:0],CE,P[21:0]" */;
  input CLK;
  input [9:0]A;
  input [10:0]B;
  input CE;
  output [21:0]P;
endmodule
