// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Thu May 26 12:17:25 2016
// Host        : Filip-550p7c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {E:/Teczka/8
//               semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip.srcs/sources_1/ip/Mnozarka/Mnozarka_funcsim.v}
// Design      : Mnozarka
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mnozarka,mult_gen_v12_0_10,{}" *) (* core_generation_info = "Mnozarka,mult_gen_v12_0_10,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mult_gen,x_ipVersion=12.0,x_ipCoreRevision=10,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_OPTIMIZE_GOAL=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=1,C_HAS_SCLR=0,C_LATENCY=4,C_A_WIDTH=10,C_A_TYPE=1,C_B_WIDTH=11,C_B_TYPE=0,C_OUT_HIGH=21,C_OUT_LOW=0,C_MULT_TYPE=1,C_CE_OVERRIDES_SCLR=0,C_CCM_IMP=0,C_B_VALUE=10000001,C_HAS_ZERO_DETECT=0,C_ROUND_OUTPUT=0,C_ROUND_PT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "mult_gen_v12_0_10,Vivado 2015.4" *) 
(* NotValidForBitStream *)
module Mnozarka
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [21:0]P;

  wire [9:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [21:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mnozarka_mult_gen_v12_0_10 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "10" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "11" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "0" *) (* C_OUT_HIGH = "21" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mnozarka_mult_gen_v12_0_10
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [9:0]A;
  input [10:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [21:0]P;
  output [47:0]PCASC;

  wire [9:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [21:0]P;
  wire [47:0]PCASC;
  wire SCLR;
  wire [1:0]ZERO_DETECT;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mnozarka_mult_gen_v12_0_10_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(SCLR),
        .ZERO_DETECT(ZERO_DETECT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
VllxWgRrugvi2fu1Kh4iL+ZkJA5TtZ+LGWCqHHHE1lCRjHiMOz5M3L3abI/BjM/wR5F/V2K65Bhs
texqqBOYvA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
MBYsuh9EGjKBlxR/81kh3KOqi8FbrckSRPHKXnFdQ+xl0tmxawBysww69vxfgtxFNJiAbn7g4XTl
ZKY4IL7I/Xtd8hfbyrNLd91vyaOSjApJ4lvzulVzGXiQnK2HerB/fsbdlHNBia244t0PdPr6F9xO
hHL7LtyvIyJ5GOAsQME=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
ZB+/R4dft7sjBtbt9KO0IC7JOAWrN2QUGDgE3tSIfDrQl4/J/iMmI3GwLQ7XorjfXJUQLlhgiEPW
+ugw+Ogpzl70RHSRn9wgBx8DxM5Ks50Auo/f7WTgCjB3kGLNv6mQbSMau1NzNOYVnZl8Rh6tHtUB
bOgS2tSRNq6hoywBzhlOhNF+WAFeAqlCivZUu+PEkHo6E5Tjow/fdsFGqDgxNX7oeLWmPsDpsKJ3
QcctpNHijjAQG5KD1D89K79Bra/gcXsqEUhln1UXEOlRrwotkgtYjLlDPa9a2oR5jbm9OA3sioA3
hmA55rKietj5N1L9Vfefe1hITEgIAfywcKZrYQ==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
4G3TtWY+qMIHXmGANxyz04ejYEVMyDiVta/i/y1q0B2PiS/6o154uUJJtYZ6VwWcRLRFBS+KSUQS
1xM/H/dAMEXDwu6MoUZym3rNyVU2gMZDpStmQOJh5oqpOfWgd+pOZrno4Pu+I5fLHhcoKhrqt+Q2
EW8gZ8651ee7nTJiYJg=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC15_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
QMt+dKNUhNRuG/0VSi/RJghtOHEDAWuXQw6E5JDXlQ+PxklRNo5tNEiJcBcfgCuhCDCJzTxIDZpL
Zl2WXMeL7ut1Y4eRZ+DtqIV3uZkJsDlnZiNL2aV/OG/UVW7kjI0hreqRKfFgsfU5U+hz59Oe8dy/
F/kn0Lm3Jd3tuBZ/cUT+xg0TOmz94aVFbqONwZkaZwyCPsAn9HIeLYFAVy/VcPKduQSMJPBQ7PdH
w52z7LHHlPlI921JzVq774O0fZa3eT3VxX64elGzcrajGaZVnvYHnXYf72axtRbmk6RBrwG4/Wdm
fqtbdWjOojWTqRzPE4EY4JSbY+Rf1P4x2S8noQ==


`pragma protect key_keyowner = "ATRENTA", key_keyname= "ATR-SG-2015-RSA-3", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
S52hBEv73jPEAyMZcPN7R3PqCrzyV5A5nvi4Ta3EFdSf6V7h3OcWhpCvzJxlzMTuMZtXKveuy3Zq
W9cfkWUM11Wf+R5nPff+MWuKk5MueJZyp0EkRBwkDplwASqXoGcn/EZEI7q64lHjwiIUtpjtnml7
JKEMcCxna7gxNb9J2HLVpNoU5Tzc7ivVytTQ3/lZMzNHyYTf1AXOId2TJN2zNXVZI+CyJMx22gz6
BZhUfxy5+fezMv+cSMX2/VIk8lkzVKR0FmReScs4LG8lxvY227btFNDIZGwT3yDmdzGqMabsx6WW
nwWes9N7WA9TVKvqvODIAGKUZzAcKr0sfSeLJw==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EsyZsl5UnfPn/QrjuORbpvpkIKq7Ql6O3FVa3DqeASNndmPl2CM0/RYLZflze0Arj4s36Ug5qK61
7Vm/A+2uSyPqAP8Ij/hJ3K/P4G+/iPKIt4g4DA5t4fmDCpytJhiTdTUOYIPmwivJMgKFL5gRMWa0
rfJ6o5J4RPymsyXqQjHItm9X4XU6deGfUiwKTUotuJ/oDk6+4WD+0DQrdTA1s3GfjKaKQW9MAV/t
+LMVehnPdqjfyJbS0Te84UOuE5bCrEgQWfJTyF5ZVQfJt20nF0lHcwfkpheAoNNLmSo9ey7LCiPG
vGhTYJct1AGDStIim9HAoJB3OMhKlLiy45g+8g==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
IAxwVO186sDVNBKqIacZ7qmJ/etjVZQBT6+z7zBphxPZhznrpCBH1vzOrJjOq9bg80K9Ju9NYtWB
XYGCuag/oG+yydG4Gr3mMJeothoO/FlkIo/1WmkbCPkaUhVa0+WocQMsFxZWJBpRtNLOuHBmvamA
S7g87l/3RCB52ugoSTpPMnX5Q+W87WusPAZaOPA/x1LMAUNmkz3soejGL0JkJB/S3iYxVu4Z38AO
9TVZpvPSIiKDv4o3vE2xQ/G2CremEPqH9431zL1TDMyQftObRpUk5dEniGzUrtSUMVFWZAnfby3B
Hd2XPzrfCAdiaUwdzuAlzX+DID14JZLn5AYGgw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7728)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
