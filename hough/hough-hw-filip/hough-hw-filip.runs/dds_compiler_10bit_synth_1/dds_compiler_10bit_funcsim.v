// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Sun Jun 05 16:00:25 2016
// Host        : Filip-550p7c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {E:/Teczka/8
//               semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip.runs/dds_compiler_10bit_synth_1/dds_compiler_10bit_funcsim.v}
// Design      : dds_compiler_10bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_10bit,dds_compiler_v6_0,{}" *) (* core_generation_info = "dds_compiler_10bit,dds_compiler_v6_0,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dds_compiler,x_ipVersion=6.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq,C_MODE_OF_OPERATION=0,C_MODULUS=9,C_ACCUMULATOR_WIDTH=10,C_CHANNELS=1,C_HAS_PHASE_OUT=0,C_HAS_PHASEGEN=0,C_HAS_SINCOS=1,C_LATENCY=2,C_MEM_TYPE=1,C_NEGATIVE_COSINE=0,C_NEGATIVE_SINE=0,C_NOISE_SHAPING=0,C_OUTPUTS_REQUIRED=2,C_OUTPUT_FORM=0,C_OUTPUT_WIDTH=10,C_PHASE_ANGLE_WIDTH=10,C_PHASE_INCREMENT=2,C_PHASE_INCREMENT_VALUE=0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,C_RESYNC=0,C_PHASE_OFFSET=0,C_PHASE_OFFSET_VALUE=0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,C_OPTIMISE_GOAL=0,C_USE_DSP48=0,C_POR_MODE=0,C_AMPLITUDE=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=0,C_HAS_TLAST=0,C_HAS_TREADY=0,C_HAS_S_PHASE=1,C_S_PHASE_TDATA_WIDTH=16,C_S_PHASE_HAS_TUSER=0,C_S_PHASE_TUSER_WIDTH=1,C_HAS_S_CONFIG=0,C_S_CONFIG_SYNC_MODE=0,C_S_CONFIG_TDATA_WIDTH=1,C_HAS_M_DATA=1,C_M_DATA_TDATA_WIDTH=32,C_M_DATA_HAS_TUSER=0,C_M_DATA_TUSER_WIDTH=1,C_HAS_M_PHASE=0,C_M_PHASE_TDATA_WIDTH=1,C_M_PHASE_HAS_TUSER=0,C_M_PHASE_TUSER_WIDTH=1,C_DEBUG_INTERFACE=0,C_CHAN_WIDTH=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dds_compiler_v6_0,Vivado 2015.1" *) 
(* NotValidForBitStream *)
module dds_compiler_10bit
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [15:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;

  wire aclk;
  wire [31:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [9:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [9:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [9:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "10" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "10" *) 
  (* C_PHASE_ANGLE_WIDTH = "10" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_10bit_dds_compiler_v6_0 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[9:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[9:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[9:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "10" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "2" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "32" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "10" *) 
(* C_PHASE_ANGLE_WIDTH = "10" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "16" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "dds_compiler_v6_0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_compiler_10bit_dds_compiler_v6_0
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [15:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [9:0]debug_axi_pinc_in;
  output [9:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [9:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [0:0]debug_axi_chan_in;
  wire [9:0]debug_axi_pinc_in;
  wire [9:0]debug_axi_poff_in;
  wire debug_core_nd;
  wire [9:0]debug_phase;
  wire debug_phase_nd;
  wire event_phase_in_invalid;
  wire event_pinc_invalid;
  wire event_poff_invalid;
  wire event_s_config_tlast_missing;
  wire event_s_config_tlast_unexpected;
  wire event_s_phase_chanid_incorrect;
  wire event_s_phase_tlast_missing;
  wire event_s_phase_tlast_unexpected;
  wire [31:0]m_axis_data_tdata;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire [0:0]m_axis_data_tuser;
  wire m_axis_data_tvalid;
  wire [0:0]m_axis_phase_tdata;
  wire m_axis_phase_tlast;
  wire m_axis_phase_tready;
  wire [0:0]m_axis_phase_tuser;
  wire m_axis_phase_tvalid;
  wire [0:0]s_axis_config_tdata;
  wire s_axis_config_tlast;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid;
  wire [15:0]s_axis_phase_tdata;
  wire s_axis_phase_tlast;
  wire s_axis_phase_tready;
  wire [0:0]s_axis_phase_tuser;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;

  assign debug_axi_resync_in = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "10" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "10" *) 
  (* C_PHASE_ANGLE_WIDTH = "10" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_10bit_dds_compiler_v6_0_viv i_synth
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .debug_axi_chan_in(debug_axi_chan_in),
        .debug_axi_pinc_in(debug_axi_pinc_in),
        .debug_axi_poff_in(debug_axi_poff_in),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(debug_core_nd),
        .debug_phase(debug_phase),
        .debug_phase_nd(debug_phase_nd),
        .event_phase_in_invalid(event_phase_in_invalid),
        .event_pinc_invalid(event_pinc_invalid),
        .event_poff_invalid(event_poff_invalid),
        .event_s_config_tlast_missing(event_s_config_tlast_missing),
        .event_s_config_tlast_unexpected(event_s_config_tlast_unexpected),
        .event_s_phase_chanid_incorrect(event_s_phase_chanid_incorrect),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(event_s_phase_tlast_unexpected),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(m_axis_data_tlast),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tuser(m_axis_data_tuser),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(m_axis_phase_tlast),
        .m_axis_phase_tready(m_axis_phase_tready),
        .m_axis_phase_tuser(m_axis_phase_tuser),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(s_axis_config_tlast),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(s_axis_phase_tlast),
        .s_axis_phase_tready(s_axis_phase_tready),
        .s_axis_phase_tuser(s_axis_phase_tuser),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
hNWJoYUKCMS3NKBPDEqpUN3/tM5SHTzbnFf0cXlS9O8wG5bapAVhnYo7WCbi5bZGepFHKmhoartg
GTGuMOCv0g==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
o/7RDO4wbWYzMH7PuJvAeLWF4d2YldLw4LiwgRv2KwngM+dtzgPoDX6Xlc7+tNZk7wN5pm9HVSJU
e1Z5WHJKuMWIWDThlSkp7Wyzj8nsoprneMVnZYb/RuPiMnC4wphkU5WYbqi0EXs8zElrQiz+n4AW
bAJcAfLBkGs9PdsanqQ=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
mH5ZLcJWPKlcP63Kztre2q+RcW6YrCSHi7ZKOAxBNtcD9c/y+BEUrzt+9ECzaV8J0LEv5w1RLRrn
/ZCtyu0HnM63iFGpCpDLPxjPgQ29f959Ju9/ISOpc9fReaL9c8zNHrQxPwX1fw6dUq78YDc6M7XN
sMc7qNW6RQ/BOCAdaGlOieEXIwAO/2Sax6zccyCbfXiXC4Xm6dWIRazbF5OyPRd2o2c/Gk7xPiBM
SJnvVh5RFDBFthXnT6jR1LmTQhTIYA/ozDqjsI2ZNz0XLDKPMjvsYEXcBz2/fW+B1jn4ETTeBiaE
2cLUC8Blxwb2noQVT2naHav1YCnWxrQv5Jc3VQ==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
k7qEpRV7lVsvRo45xpEsAw27hSHrKfLOebKwKQnVNusN1g88wfmd4eyitfZX8dVjb3vd4o49h/PF
RRmgH9roiY8MPeV+zsFuiy2PeQ795sIAgaDBljM4Gcewzl7MaBmLgd0c/5VATTmq1ufnObHs88kC
mb8f8+4Fd5tDCb6XCVc=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
V0mxbyBT0xDddcX5XrI6T41qozITpFwgpZ3WqxRYSaEDZum2cGWMlqvYBeYiOts0Xsneo3+ATPEm
c3litnzywSdTeVoSWAt1ppn217g/wkAlZUzIAEiNGf9zxOpX7Gzp66vr/wRdBmyFruFS6+Vifpo2
WfnferF+WCG9nEsn1R34C9H81goFYOq2gRUYrpwgr+GfBZL8rh2zFLS8c2l0isEfciKctmmIn0Zv
BJOtitBfQyusNZmr2oQGDD9lCXnv0OVTvVQW7oP6+4qQADzHgtuz6c+PyBeY0x+jjI3FqtL9vhyo
0Ez/J4gMreBvZ2WbKSFuRq7XYLc4QZWkI+mauA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
CCxBit/2HUl0NhWmekWsVu//o45Eo0uWkTLE0QwW8PzRh0ixtiAWY6nWuFwNrp1f7HyYG0DUiFSt
Dkkk+5gzMfz/M9XF8/IGjfuVV6qPoJP1mNC6nfadzQPrAi8yFGP+6f6Tqy3zJN8DmkXi77n1a3Cm
negN7pCWV9bXToDID3T3PNRm8AvqR5QQZS5Jzu66gn6nM5vwhn6PhJbzoPrt24t2XPw9KYL1i6mz
oeHNzyxlIZMddfN/Ec9DVh5ALlQTmhnr6B+M7TcyltlEkGPHpWKGF/7AwjmK9DymmWlo/lGTv62/
LwMLlWY/3O2occSWOQH1EIjTkkqn9/zzMouOZg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
IFPwY4lDg2Lcf3tWo63yf0e93X2aTefTB72HHwD4FYTvamP8pD1vjC+PLwoRNB8n0LxPfL9c5pvR
+Hs96OaZdqYgSZy3EiJs+f7tqPh0aL756Gy8NbU8rax9EGQeAiymFqx9ffOvSBXqg5JPHpq3LtdQ
JwbYeRP3zfr3V9gTcyvdtisHhlbEFK10Eoj1TfVmyKGHnYVJYMIeClRABznXBwd5raQyAXV/awSV
ndvbIkcmQfvEAh/5BOKgo61iLCYiDtXSp2KmSXzZLyu5w/XMkViDcLF5ZaCuQtAZQVRW+rknE9LO
bTa1m9XtYZv8g7p+7BOEaKUN3lOtrTR9s1l84A==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24656)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
hNWJoYUKCMS3NKBPDEqpUN3/tM5SHTzbnFf0cXlS9O8wG5bapAVhnYo7WCbi5bZGepFHKmhoartg
GTGuMOCv0g==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
o/7RDO4wbWYzMH7PuJvAeLWF4d2YldLw4LiwgRv2KwngM+dtzgPoDX6Xlc7+tNZk7wN5pm9HVSJU
e1Z5WHJKuMWIWDThlSkp7Wyzj8nsoprneMVnZYb/RuPiMnC4wphkU5WYbqi0EXs8zElrQiz+n4AW
bAJcAfLBkGs9PdsanqQ=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
mH5ZLcJWPKlcP63Kztre2q+RcW6YrCSHi7ZKOAxBNtcD9c/y+BEUrzt+9ECzaV8J0LEv5w1RLRrn
/ZCtyu0HnM63iFGpCpDLPxjPgQ29f959Ju9/ISOpc9fReaL9c8zNHrQxPwX1fw6dUq78YDc6M7XN
sMc7qNW6RQ/BOCAdaGlOieEXIwAO/2Sax6zccyCbfXiXC4Xm6dWIRazbF5OyPRd2o2c/Gk7xPiBM
SJnvVh5RFDBFthXnT6jR1LmTQhTIYA/ozDqjsI2ZNz0XLDKPMjvsYEXcBz2/fW+B1jn4ETTeBiaE
2cLUC8Blxwb2noQVT2naHav1YCnWxrQv5Jc3VQ==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
k7qEpRV7lVsvRo45xpEsAw27hSHrKfLOebKwKQnVNusN1g88wfmd4eyitfZX8dVjb3vd4o49h/PF
RRmgH9roiY8MPeV+zsFuiy2PeQ795sIAgaDBljM4Gcewzl7MaBmLgd0c/5VATTmq1ufnObHs88kC
mb8f8+4Fd5tDCb6XCVc=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
V0mxbyBT0xDddcX5XrI6T41qozITpFwgpZ3WqxRYSaEDZum2cGWMlqvYBeYiOts0Xsneo3+ATPEm
c3litnzywSdTeVoSWAt1ppn217g/wkAlZUzIAEiNGf9zxOpX7Gzp66vr/wRdBmyFruFS6+Vifpo2
WfnferF+WCG9nEsn1R34C9H81goFYOq2gRUYrpwgr+GfBZL8rh2zFLS8c2l0isEfciKctmmIn0Zv
BJOtitBfQyusNZmr2oQGDD9lCXnv0OVTvVQW7oP6+4qQADzHgtuz6c+PyBeY0x+jjI3FqtL9vhyo
0Ez/J4gMreBvZ2WbKSFuRq7XYLc4QZWkI+mauA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
CCxBit/2HUl0NhWmekWsVu//o45Eo0uWkTLE0QwW8PzRh0ixtiAWY6nWuFwNrp1f7HyYG0DUiFSt
Dkkk+5gzMfz/M9XF8/IGjfuVV6qPoJP1mNC6nfadzQPrAi8yFGP+6f6Tqy3zJN8DmkXi77n1a3Cm
negN7pCWV9bXToDID3T3PNRm8AvqR5QQZS5Jzu66gn6nM5vwhn6PhJbzoPrt24t2XPw9KYL1i6mz
oeHNzyxlIZMddfN/Ec9DVh5ALlQTmhnr6B+M7TcyltlEkGPHpWKGF/7AwjmK9DymmWlo/lGTv62/
LwMLlWY/3O2occSWOQH1EIjTkkqn9/zzMouOZg==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
IFPwY4lDg2Lcf3tWo63yf0e93X2aTefTB72HHwD4FYTvamP8pD1vjC+PLwoRNB8n0LxPfL9c5pvR
+Hs96OaZdqYgSZy3EiJs+f7tqPh0aL756Gy8NbU8rax9EGQeAiymFqx9ffOvSBXqg5JPHpq3LtdQ
JwbYeRP3zfr3V9gTcyvdtisHhlbEFK10Eoj1TfVmyKGHnYVJYMIeClRABznXBwd5raQyAXV/awSV
ndvbIkcmQfvEAh/5BOKgo61iLCYiDtXSp2KmSXzZLyu5w/XMkViDcLF5ZaCuQtAZQVRW+rknE9LO
bTa1m9XtYZv8g7p+7BOEaKUN3lOtrTR9s1l84A==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2400)
`pragma protect data_block
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
VNPZ6uyV
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
