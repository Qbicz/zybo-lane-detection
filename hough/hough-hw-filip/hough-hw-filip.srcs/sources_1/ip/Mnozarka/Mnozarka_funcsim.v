// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Sun Jun 05 09:18:43 2016
// Host        : Filip-550p7c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {E:/Teczka/8
//               semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip.srcs/sources_1/ip/Mnozarka/Mnozarka_funcsim.v}
// Design      : Mnozarka
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mnozarka,mult_gen_v12_0,{}" *) (* core_generation_info = "Mnozarka,mult_gen_v12_0,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mult_gen,x_ipVersion=12.0,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_OPTIMIZE_GOAL=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=1,C_HAS_SCLR=0,C_LATENCY=4,C_A_WIDTH=10,C_A_TYPE=1,C_B_WIDTH=11,C_B_TYPE=0,C_OUT_HIGH=21,C_OUT_LOW=0,C_MULT_TYPE=1,C_CE_OVERRIDES_SCLR=0,C_CCM_IMP=0,C_B_VALUE=10000001,C_HAS_ZERO_DETECT=0,C_ROUND_OUTPUT=0,C_ROUND_PT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "mult_gen_v12_0,Vivado 2015.1" *) 
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
  Mnozarka_mult_gen_v12_0 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mnozarka_mult_gen_v12_0
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
  Mnozarka_mult_gen_v12_0_viv i_mult
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
FE74Lr97VmP2+Ez4rVovbpvB4Vynb7rIpzp8VfQztGnoDYQhPydTGw7yfEWSM5wxHTELmoJ2e0kg
nyVOAJOzGQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
UnafVlLwmVqAgDqs5BDZxTsO5Qw7Nz7T9DxPoDF0yCGyYUDPhiDs1mqI3Qg4QkYIJp5yYFsGIAAO
pUYs/IY/A44uoTsDTNaGtZoBJ1v68kJEgigV/osFZXpEcDoqag3/4JvCEpkiquflbTFnocW307r8
0cE640p4GyvyHA08QzM=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
rfFLFKH82qRgMOK8+SSf05H2LmUnOQNDMOMMTrDokVNnoH3TrlXrFkRE/tLuqVI87gD38MoU0OsY
2vyjubJ+yK3fH69lUPsWYfAvtU2GYCn9lQxnDlilq3K9JTZOQlARVDCUJs7zKijxylKCQ9T4aeOy
qWSJQf7IY72ND0QmI4tbkWjY9UVdTMA0mNgfU1R3/x2b+5MxrvnivC5O40ApLlsTZJdrxk3CKVg9
w6j++2bBkF8pDTv4uJYJhQDDIIu6T25xOKZAldxd+F/YHif5qz+3kDBbZJwHloxlDIRuvoJ/Q10X
fAIvL1Bfmd7z81oSb2W1AQyE68hf98QRc+yt6g==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
K3+UOwlCwx3t7FyQuvXVOuOLSf79w8H29kYesB4t4ENU7w/cJ+3jINJp3g7+Mw/l3pow2eggqoBf
iR2wVOlrGRDgOMdP5om5gBbx5l7eLztB5Wu7TXxa4iclWrFOSPWLp1OuF5oKGeVz6IS+D0PiG82m
GJDW36qBP5Bj/b1u1ME=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EXT8uDkmRcpwbfGuT5uQLCxfBwgkoXSHlzuXgPMCFUCzus9PnTSCzAm+w4+DWFCWCKofiwIYxjX+
VhvGm4jvvVmlHHmdFjkFfHf9tcT47/Qv+MNlvS1uDLyBUnKJFHfof6DVosv9docWZkjQVvvv54/h
+XjrqvpRF6uRIWJessijQgbJ5Riby6fuu5/Gao0iUQ2fUgTF8lCA3xgAXbv5+Cl5eccDmIQV/Bf+
5e2BleBP1Ac9mgOEQoT10lCrnCOifjRNdLGfLyIA4INjmFyVhYX2slSsAPtjU7fa3zGD5KNICn/M
bA66q2PSTKNLTr4xOU/9HIDRXVIaPzR1uLrkDg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
HSgxuYRlcqNbqBi8Uwb3pFX3bah1xtWUMD7mN2zFw9yp/nkj4DA9tkoKbW6eNltFOqI1H9XMqy7f
qJTfmQbY7woINGLXZtxIEqxTbeIjoLBF3BYn8nllFHBTlrrVvsny15XPiGdq3Ns0yURPdd9hO58R
9dXRT1guuPQWrCTprTplR7uqSikZsQEokJDB4sldQ9/ocqsabb+rDcHPETuMjAeU2KQRELiJs2jn
3qgCafs9jhLfEkYOMOwFppYmTw0NSWB7X/HELpQQQbQbyfKDJjc+WuZBab7959RXzJEQ3IHTY9pr
tO4CYsD2NQm+fvjPA1V4ofAcaUMlHTBu8qf4cw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
MLf1C3XUbrJjIlAHaCVUDLGExLHwa9efMdRDYBqHMQvm25PseXcpWDFJ2s5KjwNxIaSE/Ra2eF38
ZWAKrwRvFXFz7qX+jxo1xFERADDf07vDygZ5ihNKKGeYZ5rQx8+ad0t+ThzyOZ6PRaatljGOrLGu
23dGvvczwzHS9zBFEo1qjtgNouMO7hGOKuHK3MpHH7D2jJq+VeyhrqW4T0mlsDzT6H9tMX7Mg3cS
gVo3Qz0o3/kx0y+D3CubtkrBawQYwMXpzFYZOtsZZu8kdJG/wa3fQODiefGdn5gPq9G0b7/lCA+c
+vW5wxjsbd+Z0Z+Wmpn/TiSVeUhZrErpHYwivw==


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
