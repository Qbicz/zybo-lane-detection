// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Wed May 25 10:50:44 2016
// Host        : lsriw running 64-bit Debian GNU/Linux 8.3 (jessie)
// Command     : write_verilog -force -mode funcsim
//               /home/lsriw/psra/kubicz/hough-hw-filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_sim_netlist.v
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
pJH+ktDMoJZuam/ODf+DpXW5QZ4yEJvFehoVXt5brg9yAZBAPd8yREqY9UlwVdG+AY1tUMLvXgUy
uPRiU6XJstVGjYoEhLd8chSRMBtIo0bKjFL+YkCRBhhPHJD9XnhyO1a/GmgQSTzpALlVMAcRRxnU
8/N4rcPebKRh+fYUdUilNkPhaetHsGixafO4Atv8sxaIvh0+YGqc7lEguYlBAV3h0bdFXdE7L/SF
GucKf7jX9q57tuOL32pheCr1OrC8nQT6I6gL7x55LVEV9hH6gNG5Dio4NPe7mwvTnglzS9YgeZXO
TCtm4tKKMxMNSwcpQKffHSAt0R0slhK/vnaR+Q==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
NF9uXTAZZSrj6UwBfzfZ3jAPiawkx6k3w3TaxApfZ8pGt25upkzHAlh5fMPWDmAcGcv9MWB5cwoO
K7jMBgxcHVa0+QjAHQlZRjvhd9Bj5p7ssb94RELes8gTnEa4aQLCeHJElQ7OAWexQn3new74PpYM
/MzWw5gdlUSXkIb2pv1LHnS6Sk8tpnBYiysOpg2asOXemFjdiL4h9xYjflnyL7QldFzVGYTBNCz2
p58faGCrxihZSVKo/f1uQJmJU8XBOUmt7exNwVkcJzW5yq4+koo+5DW5HBgORDjDM45PrSbD22UC
0AYDsacxzsqXjvjlaSlMxrUBC3WPu6Lei0YTkQ==


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
