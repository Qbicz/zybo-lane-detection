// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Wed May 11 11:33:03 2016
// Host        : lsriw running 64-bit Debian GNU/Linux 8.3 (jessie)
// Command     : write_verilog -force -mode synth_stub
//               /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.v
// Design      : Mnozarka
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_10,Vivado 2015.4" *)
module Mnozarka(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[10:0],B[10:0],CE,P[21:0]" */;
  input CLK;
  input [10:0]A;
  input [10:0]B;
  input CE;
  output [21:0]P;
endmodule
