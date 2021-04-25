// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Apr 25 11:52:59 2021
// Host        : synestia9 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bmelnick3/cs3220/CS3220-Pipeline/Assignment5/MultVivado/MultVivado.gen/sources_1/bd/design_1/ip/design_1_mulBF16_0_0/design_1_mulBF16_0_0_sim_netlist.v
// Design      : design_1_mulBF16_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mulBF16_0_0,mulBF16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "mulBF16,Vivado 2020.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_mulBF16_0_0
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "2'b01" *) 
  (* ap_ST_fsm_state2 = "2'b10" *) 
  design_1_mulBF16_0_0_mulBF16 inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "mulBF16" *) 
(* ap_ST_fsm_state1 = "2'b01" *) (* ap_ST_fsm_state2 = "2'b10" *) (* hls_module = "yes" *) 
module design_1_mulBF16_0_0_mulBF16
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;

  wire \<const0> ;
  wire [31:15]a_read_reg_334;
  wire [6:1]add_ln84_1_fu_239_p2;
  wire [8:0]add_ln84_1_reg_367;
  wire add_ln84_1_reg_3670;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire [1:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:15]b_read_reg_329;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_18;
  wire control_s_axi_U_n_19;
  wire control_s_axi_U_n_20;
  wire control_s_axi_U_n_21;
  wire control_s_axi_U_n_37;
  wire control_s_axi_U_n_38;
  wire control_s_axi_U_n_39;
  wire control_s_axi_U_n_40;
  wire control_s_axi_U_n_41;
  wire control_s_axi_U_n_42;
  wire control_s_axi_U_n_43;
  wire control_s_axi_U_n_44;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_47;
  wire control_s_axi_U_n_48;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_50;
  wire control_s_axi_U_n_51;
  wire control_s_axi_U_n_52;
  wire control_s_axi_U_n_53;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_61;
  wire control_s_axi_U_n_62;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_7;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_8;
  wire control_s_axi_U_n_9;
  wire [7:0]exponent_b_fu_127_p4;
  wire [7:0]exponent_b_reg_339;
  wire mul_8ns_8ns_16_1_1_U1_n_1;
  wire mul_8ns_8ns_16_1_1_U1_n_2;
  wire mul_8ns_8ns_16_1_1_U1_n_3;
  wire mul_8ns_8ns_16_1_1_U1_n_4;
  wire mul_8ns_8ns_16_1_1_U1_n_5;
  wire mul_8ns_8ns_16_1_1_U1_n_6;
  wire mul_8ns_8ns_16_1_1_U1_n_7;
  wire mul_8ns_8ns_16_1_1_U1_n_8;
  wire or_ln51_fu_161_p2;
  wire or_ln51_reg_344;
  wire or_ln56_reg_348;
  wire p_0_in;
  wire [6:0]raw_m_ab_fu_185_p0;
  wire [6:0]raw_m_ab_fu_185_p1;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [6:0]sf_reg_362;
  wire [6:6]st_reg_357;
  wire tmp_2_reg_352;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \a_read_reg_334_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_53),
        .Q(a_read_reg_334[15]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_52),
        .Q(a_read_reg_334[16]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_51),
        .Q(a_read_reg_334[17]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_50),
        .Q(a_read_reg_334[18]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_49),
        .Q(a_read_reg_334[19]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_48),
        .Q(a_read_reg_334[20]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_47),
        .Q(a_read_reg_334[21]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_46),
        .Q(a_read_reg_334[22]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_45),
        .Q(a_read_reg_334[23]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_44),
        .Q(a_read_reg_334[24]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_43),
        .Q(a_read_reg_334[25]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_42),
        .Q(a_read_reg_334[26]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_41),
        .Q(a_read_reg_334[27]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_40),
        .Q(a_read_reg_334[28]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_39),
        .Q(a_read_reg_334[29]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_38),
        .Q(a_read_reg_334[30]),
        .R(1'b0));
  FDRE \a_read_reg_334_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_37),
        .Q(a_read_reg_334[31]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[0] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(control_s_axi_U_n_69),
        .Q(add_ln84_1_reg_367[0]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[1] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[1]),
        .Q(add_ln84_1_reg_367[1]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[2] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[2]),
        .Q(add_ln84_1_reg_367[2]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[3] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[3]),
        .Q(add_ln84_1_reg_367[3]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[4] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[4]),
        .Q(add_ln84_1_reg_367[4]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[5] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[5]),
        .Q(add_ln84_1_reg_367[5]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[6] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(add_ln84_1_fu_239_p2[6]),
        .Q(add_ln84_1_reg_367[6]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[7] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(control_s_axi_U_n_62),
        .Q(add_ln84_1_reg_367[7]),
        .R(1'b0));
  FDRE \add_ln84_1_reg_367_reg[8] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(control_s_axi_U_n_61),
        .Q(add_ln84_1_reg_367[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .O(ap_NS_fsm));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  FDRE \b_read_reg_329_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_21),
        .Q(b_read_reg_329[15]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_20),
        .Q(b_read_reg_329[16]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_19),
        .Q(b_read_reg_329[17]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_18),
        .Q(b_read_reg_329[18]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_17),
        .Q(b_read_reg_329[19]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_16),
        .Q(b_read_reg_329[20]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_15),
        .Q(b_read_reg_329[21]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_14),
        .Q(b_read_reg_329[22]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_13),
        .Q(b_read_reg_329[23]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_12),
        .Q(b_read_reg_329[24]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_11),
        .Q(b_read_reg_329[25]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_10),
        .Q(b_read_reg_329[26]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_9),
        .Q(b_read_reg_329[27]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_8),
        .Q(b_read_reg_329[28]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_7),
        .Q(b_read_reg_329[29]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_6),
        .Q(b_read_reg_329[30]),
        .R(1'b0));
  FDRE \b_read_reg_329_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(control_s_axi_U_n_5),
        .Q(b_read_reg_329[31]),
        .R(1'b0));
  design_1_mulBF16_0_0_mulBF16_control_s_axi control_s_axi_U
       (.D({control_s_axi_U_n_61,control_s_axi_U_n_62,add_ln84_1_fu_239_p2,control_s_axi_U_n_69}),
        .E(add_ln84_1_reg_3670),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .P(p_0_in),
        .Q({ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0] (control_s_axi_U_n_70),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .exponent_b_reg_339(exponent_b_reg_339),
        .\int_a_reg[31]_0 ({control_s_axi_U_n_37,control_s_axi_U_n_38,control_s_axi_U_n_39,control_s_axi_U_n_40,control_s_axi_U_n_41,control_s_axi_U_n_42,control_s_axi_U_n_43,control_s_axi_U_n_44,control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53,raw_m_ab_fu_185_p1}),
        .\int_b_reg[31]_0 ({control_s_axi_U_n_5,control_s_axi_U_n_6,control_s_axi_U_n_7,control_s_axi_U_n_8,control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15,control_s_axi_U_n_16,control_s_axi_U_n_17,control_s_axi_U_n_18,control_s_axi_U_n_19,control_s_axi_U_n_20,control_s_axi_U_n_21,exponent_b_fu_127_p4,raw_m_ab_fu_185_p0}),
        .\int_c_reg[31]_0 (b_read_reg_329),
        .\int_c_reg[31]_1 (a_read_reg_334),
        .\int_c_reg[31]_2 (add_ln84_1_reg_367),
        .or_ln51_fu_161_p2(or_ln51_fu_161_p2),
        .or_ln51_reg_344(or_ln51_reg_344),
        .or_ln56_reg_348(or_ln56_reg_348),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sf_reg_362(sf_reg_362),
        .st_reg_357(st_reg_357),
        .tmp_2_reg_352(tmp_2_reg_352));
  FDRE \exponent_b_reg_339_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[0]),
        .Q(exponent_b_reg_339[0]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[1]),
        .Q(exponent_b_reg_339[1]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[2]),
        .Q(exponent_b_reg_339[2]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[3]),
        .Q(exponent_b_reg_339[3]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[4]),
        .Q(exponent_b_reg_339[4]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[5]),
        .Q(exponent_b_reg_339[5]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[6]),
        .Q(exponent_b_reg_339[6]),
        .R(1'b0));
  FDRE \exponent_b_reg_339_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(exponent_b_fu_127_p4[7]),
        .Q(exponent_b_reg_339[7]),
        .R(1'b0));
  design_1_mulBF16_0_0_mulBF16_mul_8ns_8ns_16_1_1 mul_8ns_8ns_16_1_1_U1
       (.P({p_0_in,mul_8ns_8ns_16_1_1_U1_n_1,mul_8ns_8ns_16_1_1_U1_n_2,mul_8ns_8ns_16_1_1_U1_n_3,mul_8ns_8ns_16_1_1_U1_n_4,mul_8ns_8ns_16_1_1_U1_n_5,mul_8ns_8ns_16_1_1_U1_n_6,mul_8ns_8ns_16_1_1_U1_n_7,mul_8ns_8ns_16_1_1_U1_n_8}),
        .p(raw_m_ab_fu_185_p1),
        .p_0(raw_m_ab_fu_185_p0));
  FDRE \or_ln51_reg_344_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(or_ln51_fu_161_p2),
        .Q(or_ln51_reg_344),
        .R(1'b0));
  FDRE \or_ln56_reg_348_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_70),
        .Q(or_ln56_reg_348),
        .R(1'b0));
  FDRE \sf_reg_362_reg[0] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_8),
        .Q(sf_reg_362[0]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[1] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_7),
        .Q(sf_reg_362[1]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[2] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_6),
        .Q(sf_reg_362[2]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[3] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_5),
        .Q(sf_reg_362[3]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[4] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_4),
        .Q(sf_reg_362[4]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[5] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_3),
        .Q(sf_reg_362[5]),
        .R(1'b0));
  FDRE \sf_reg_362_reg[6] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_2),
        .Q(sf_reg_362[6]),
        .R(1'b0));
  FDRE \st_reg_357_reg[6] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(mul_8ns_8ns_16_1_1_U1_n_1),
        .Q(st_reg_357),
        .R(1'b0));
  FDRE \tmp_2_reg_352_reg[0] 
       (.C(ap_clk),
        .CE(add_ln84_1_reg_3670),
        .D(p_0_in),
        .Q(tmp_2_reg_352),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mulBF16_control_s_axi" *) 
module design_1_mulBF16_0_0_mulBF16_control_s_axi
   (SR,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    E,
    or_ln51_fu_161_p2,
    \int_b_reg[31]_0 ,
    \int_a_reg[31]_0 ,
    D,
    \ap_CS_fsm_reg[0] ,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RDATA,
    ap_clk,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    Q,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    or_ln56_reg_348,
    or_ln51_reg_344,
    P,
    ap_rst_n,
    \int_c_reg[31]_0 ,
    \int_c_reg[31]_1 ,
    s_axi_control_AWADDR,
    sf_reg_362,
    tmp_2_reg_352,
    st_reg_357,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_WVALID,
    \int_c_reg[31]_2 ,
    exponent_b_reg_339);
  output [0:0]SR;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output [0:0]E;
  output or_ln51_fu_161_p2;
  output [31:0]\int_b_reg[31]_0 ;
  output [23:0]\int_a_reg[31]_0 ;
  output [8:0]D;
  output \ap_CS_fsm_reg[0] ;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [31:0]s_axi_control_RDATA;
  input ap_clk;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [1:0]Q;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [5:0]s_axi_control_ARADDR;
  input or_ln56_reg_348;
  input or_ln51_reg_344;
  input [0:0]P;
  input ap_rst_n;
  input [16:0]\int_c_reg[31]_0 ;
  input [16:0]\int_c_reg[31]_1 ;
  input [5:0]s_axi_control_AWADDR;
  input [6:0]sf_reg_362;
  input tmp_2_reg_352;
  input [0:0]st_reg_357;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input s_axi_control_WVALID;
  input [8:0]\int_c_reg[31]_2 ;
  input [7:0]exponent_b_reg_339;

  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [0:0]P;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \add_ln84_1_reg_367[8]_i_2_n_0 ;
  wire [7:0]add_ln84_fu_290_p2;
  wire [8:8]add_ln84_fu_290_p2__0;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ar_hs;
  wire [15:15]c;
  wire c_ap_vld;
  wire [7:0]exponent_b_reg_339;
  wire icmp_ln51_1_fu_155_p2;
  wire icmp_ln56_1_fu_173_p2;
  wire int_a;
  wire [31:0]int_a0;
  wire \int_a[31]_i_3_n_0 ;
  wire [23:0]\int_a_reg[31]_0 ;
  wire int_b;
  wire [31:0]int_b0;
  wire [31:0]\int_b_reg[31]_0 ;
  wire [31:0]int_c;
  wire \int_c[0]_i_1_n_0 ;
  wire \int_c[10]_i_2_n_0 ;
  wire \int_c[10]_i_3_n_0 ;
  wire \int_c[10]_i_4_n_0 ;
  wire \int_c[10]_i_5_n_0 ;
  wire \int_c[14]_i_2_n_0 ;
  wire \int_c[14]_i_3_n_0 ;
  wire \int_c[14]_i_4_n_0 ;
  wire \int_c[14]_i_5_n_0 ;
  wire \int_c[16]_i_1_n_0 ;
  wire \int_c[17]_i_1_n_0 ;
  wire \int_c[18]_i_1_n_0 ;
  wire \int_c[19]_i_1_n_0 ;
  wire \int_c[1]_i_1_n_0 ;
  wire \int_c[20]_i_1_n_0 ;
  wire \int_c[21]_i_1_n_0 ;
  wire \int_c[22]_i_1_n_0 ;
  wire \int_c[23]_i_1_n_0 ;
  wire \int_c[24]_i_1_n_0 ;
  wire \int_c[25]_i_1_n_0 ;
  wire \int_c[26]_i_1_n_0 ;
  wire \int_c[27]_i_1_n_0 ;
  wire \int_c[28]_i_1_n_0 ;
  wire \int_c[29]_i_1_n_0 ;
  wire \int_c[2]_i_1_n_0 ;
  wire \int_c[30]_i_1_n_0 ;
  wire \int_c[31]_i_2_n_0 ;
  wire \int_c[3]_i_1_n_0 ;
  wire \int_c[4]_i_1_n_0 ;
  wire \int_c[5]_i_1_n_0 ;
  wire \int_c[6]_i_1_n_0 ;
  wire int_c_ap_vld;
  wire int_c_ap_vld1;
  wire int_c_ap_vld_i_1_n_0;
  wire \int_c_reg[10]_i_1_n_0 ;
  wire \int_c_reg[10]_i_1_n_1 ;
  wire \int_c_reg[10]_i_1_n_2 ;
  wire \int_c_reg[10]_i_1_n_3 ;
  wire \int_c_reg[14]_i_1_n_0 ;
  wire \int_c_reg[14]_i_1_n_1 ;
  wire \int_c_reg[14]_i_1_n_2 ;
  wire \int_c_reg[14]_i_1_n_3 ;
  wire [16:0]\int_c_reg[31]_0 ;
  wire [16:0]\int_c_reg[31]_1 ;
  wire [8:0]\int_c_reg[31]_2 ;
  wire \int_c_reg[31]_i_3_n_2 ;
  wire or_ln51_fu_161_p2;
  wire or_ln51_reg_344;
  wire \or_ln51_reg_344[0]_i_2_n_0 ;
  wire \or_ln51_reg_344[0]_i_4_n_0 ;
  wire or_ln56_fu_179_p2;
  wire or_ln56_reg_348;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_6_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [6:0]sf_reg_362;
  wire [0:0]st_reg_357;
  wire tmp_2_reg_352;
  wire \tmp_2_reg_352[0]_i_3_n_0 ;
  wire \tmp_2_reg_352[0]_i_5_n_0 ;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [7:0]zext_ln66_fu_207_p1;
  wire [3:0]\NLW_int_c_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_int_c_reg[31]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'hF444F477)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \add_ln84_1_reg_367[0]_i_1 
       (.I0(zext_ln66_fu_207_p1[0]),
        .I1(P),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \add_ln84_1_reg_367[1]_i_1 
       (.I0(zext_ln66_fu_207_p1[0]),
        .I1(P),
        .I2(zext_ln66_fu_207_p1[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h37C8)) 
    \add_ln84_1_reg_367[2]_i_1 
       (.I0(zext_ln66_fu_207_p1[0]),
        .I1(zext_ln66_fu_207_p1[1]),
        .I2(P),
        .I3(zext_ln66_fu_207_p1[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h37FFC800)) 
    \add_ln84_1_reg_367[3]_i_1 
       (.I0(P),
        .I1(zext_ln66_fu_207_p1[1]),
        .I2(zext_ln66_fu_207_p1[0]),
        .I3(zext_ln66_fu_207_p1[2]),
        .I4(zext_ln66_fu_207_p1[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h5F7FFFFFA0800000)) 
    \add_ln84_1_reg_367[4]_i_1 
       (.I0(zext_ln66_fu_207_p1[2]),
        .I1(zext_ln66_fu_207_p1[0]),
        .I2(zext_ln66_fu_207_p1[1]),
        .I3(P),
        .I4(zext_ln66_fu_207_p1[3]),
        .I5(zext_ln66_fu_207_p1[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln84_1_reg_367[5]_i_1 
       (.I0(\add_ln84_1_reg_367[8]_i_2_n_0 ),
        .I1(zext_ln66_fu_207_p1[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \add_ln84_1_reg_367[6]_i_1 
       (.I0(\add_ln84_1_reg_367[8]_i_2_n_0 ),
        .I1(zext_ln66_fu_207_p1[5]),
        .I2(zext_ln66_fu_207_p1[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h807F)) 
    \add_ln84_1_reg_367[7]_i_1 
       (.I0(zext_ln66_fu_207_p1[5]),
        .I1(\add_ln84_1_reg_367[8]_i_2_n_0 ),
        .I2(zext_ln66_fu_207_p1[6]),
        .I3(zext_ln66_fu_207_p1[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \add_ln84_1_reg_367[8]_i_1 
       (.I0(zext_ln66_fu_207_p1[5]),
        .I1(\add_ln84_1_reg_367[8]_i_2_n_0 ),
        .I2(zext_ln66_fu_207_p1[6]),
        .I3(zext_ln66_fu_207_p1[7]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h8800800000000000)) 
    \add_ln84_1_reg_367[8]_i_2 
       (.I0(zext_ln66_fu_207_p1[4]),
        .I1(zext_ln66_fu_207_p1[2]),
        .I2(zext_ln66_fu_207_p1[0]),
        .I3(zext_ln66_fu_207_p1[1]),
        .I4(P),
        .I5(zext_ln66_fu_207_p1[3]),
        .O(\add_ln84_1_reg_367[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [0]),
        .O(int_a0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[3]),
        .O(int_a0[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[4]),
        .O(int_a0[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[5]),
        .O(int_a0[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[6]),
        .O(int_a0[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[7]),
        .O(int_a0[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [7]),
        .O(int_a0[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [8]),
        .O(int_a0[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [9]),
        .O(int_a0[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [10]),
        .O(int_a0[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [11]),
        .O(int_a0[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [1]),
        .O(int_a0[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [12]),
        .O(int_a0[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [13]),
        .O(int_a0[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [14]),
        .O(int_a0[22]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [15]),
        .O(int_a0[23]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [16]),
        .O(int_a0[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [17]),
        .O(int_a0[25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [18]),
        .O(int_a0[26]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [19]),
        .O(int_a0[27]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [20]),
        .O(int_a0[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [21]),
        .O(int_a0[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [2]),
        .O(int_a0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [22]),
        .O(int_a0[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \int_a[31]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\int_a[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(int_a));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [23]),
        .O(int_a0[31]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \int_a[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(s_axi_control_WVALID),
        .O(\int_a[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [3]),
        .O(int_a0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [4]),
        .O(int_a0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [5]),
        .O(int_a0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [6]),
        .O(int_a0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(zext_ln66_fu_207_p1[0]),
        .O(int_a0[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[1]),
        .O(int_a0[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(zext_ln66_fu_207_p1[2]),
        .O(int_a0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[0] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[0]),
        .Q(\int_a_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[10] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[10]),
        .Q(zext_ln66_fu_207_p1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[11] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[11]),
        .Q(zext_ln66_fu_207_p1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[12] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[12]),
        .Q(zext_ln66_fu_207_p1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[13] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[13]),
        .Q(zext_ln66_fu_207_p1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[14] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[14]),
        .Q(zext_ln66_fu_207_p1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[15] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[15]),
        .Q(\int_a_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[16] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[16]),
        .Q(\int_a_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[17] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[17]),
        .Q(\int_a_reg[31]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[18] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[18]),
        .Q(\int_a_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[19] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[19]),
        .Q(\int_a_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[1] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[1]),
        .Q(\int_a_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[20] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[20]),
        .Q(\int_a_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[21] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[21]),
        .Q(\int_a_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[22] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[22]),
        .Q(\int_a_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[23] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[23]),
        .Q(\int_a_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[24] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[24]),
        .Q(\int_a_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[25] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[25]),
        .Q(\int_a_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[26] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[26]),
        .Q(\int_a_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[27] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[27]),
        .Q(\int_a_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[28] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[28]),
        .Q(\int_a_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[29] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[29]),
        .Q(\int_a_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[2] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[2]),
        .Q(\int_a_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[30] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[30]),
        .Q(\int_a_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[31] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[31]),
        .Q(\int_a_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[3] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[3]),
        .Q(\int_a_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[4] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[4]),
        .Q(\int_a_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[5] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[5]),
        .Q(\int_a_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[6] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[6]),
        .Q(\int_a_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[7] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[7]),
        .Q(zext_ln66_fu_207_p1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[8] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[8]),
        .Q(zext_ln66_fu_207_p1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[9] 
       (.C(ap_clk),
        .CE(int_a),
        .D(int_a0[9]),
        .Q(zext_ln66_fu_207_p1[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [0]),
        .O(int_b0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [10]),
        .O(int_b0[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [11]),
        .O(int_b0[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [12]),
        .O(int_b0[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [13]),
        .O(int_b0[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [14]),
        .O(int_b0[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [15]),
        .O(int_b0[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [16]),
        .O(int_b0[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [17]),
        .O(int_b0[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [18]),
        .O(int_b0[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [19]),
        .O(int_b0[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [1]),
        .O(int_b0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [20]),
        .O(int_b0[20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [21]),
        .O(int_b0[21]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [22]),
        .O(int_b0[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_b_reg[31]_0 [23]),
        .O(int_b0[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [24]),
        .O(int_b0[24]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [25]),
        .O(int_b0[25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [26]),
        .O(int_b0[26]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [27]),
        .O(int_b0[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [28]),
        .O(int_b0[28]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [29]),
        .O(int_b0[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [2]),
        .O(int_b0[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [30]),
        .O(int_b0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_b[31]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\int_a[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(int_b));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_b_reg[31]_0 [31]),
        .O(int_b0[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [3]),
        .O(int_b0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [4]),
        .O(int_b0[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [5]),
        .O(int_b0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [6]),
        .O(int_b0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_b_reg[31]_0 [7]),
        .O(int_b0[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [8]),
        .O(int_b0[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_b_reg[31]_0 [9]),
        .O(int_b0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[0] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[0]),
        .Q(\int_b_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[10] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[10]),
        .Q(\int_b_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[11] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[11]),
        .Q(\int_b_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[12] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[12]),
        .Q(\int_b_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[13] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[13]),
        .Q(\int_b_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[14] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[14]),
        .Q(\int_b_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[15] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[15]),
        .Q(\int_b_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[16] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[16]),
        .Q(\int_b_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[17] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[17]),
        .Q(\int_b_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[18] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[18]),
        .Q(\int_b_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[19] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[19]),
        .Q(\int_b_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[1] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[1]),
        .Q(\int_b_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[20] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[20]),
        .Q(\int_b_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[21] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[21]),
        .Q(\int_b_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[22] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[22]),
        .Q(\int_b_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[23] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[23]),
        .Q(\int_b_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[24] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[24]),
        .Q(\int_b_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[25] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[25]),
        .Q(\int_b_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[26] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[26]),
        .Q(\int_b_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[27] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[27]),
        .Q(\int_b_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[28] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[28]),
        .Q(\int_b_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[29] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[29]),
        .Q(\int_b_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[2] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[2]),
        .Q(\int_b_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[30] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[30]),
        .Q(\int_b_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[31] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[31]),
        .Q(\int_b_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[3] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[3]),
        .Q(\int_b_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[4] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[4]),
        .Q(\int_b_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[5] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[5]),
        .Q(\int_b_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[6] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[6]),
        .Q(\int_b_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[7] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[7]),
        .Q(\int_b_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[8] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[8]),
        .Q(\int_b_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[9] 
       (.C(ap_clk),
        .CE(int_b),
        .D(int_b0[9]),
        .Q(\int_b_reg[31]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[0]_i_1 
       (.I0(sf_reg_362[1]),
        .I1(sf_reg_362[0]),
        .I2(tmp_2_reg_352),
        .O(\int_c[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[10]_i_2 
       (.I0(\int_c_reg[31]_2 [3]),
        .I1(exponent_b_reg_339[3]),
        .O(\int_c[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[10]_i_3 
       (.I0(\int_c_reg[31]_2 [2]),
        .I1(exponent_b_reg_339[2]),
        .O(\int_c[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[10]_i_4 
       (.I0(\int_c_reg[31]_2 [1]),
        .I1(exponent_b_reg_339[1]),
        .O(\int_c[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[10]_i_5 
       (.I0(\int_c_reg[31]_2 [0]),
        .I1(exponent_b_reg_339[0]),
        .O(\int_c[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[14]_i_2 
       (.I0(\int_c_reg[31]_2 [7]),
        .I1(exponent_b_reg_339[7]),
        .O(\int_c[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[14]_i_3 
       (.I0(\int_c_reg[31]_2 [6]),
        .I1(exponent_b_reg_339[6]),
        .O(\int_c[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[14]_i_4 
       (.I0(\int_c_reg[31]_2 [5]),
        .I1(exponent_b_reg_339[5]),
        .O(\int_c[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[14]_i_5 
       (.I0(\int_c_reg[31]_2 [4]),
        .I1(exponent_b_reg_339[4]),
        .O(\int_c[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \int_c[15]_i_1 
       (.I0(\int_c_reg[31]_0 [0]),
        .I1(\int_c_reg[31]_1 [0]),
        .I2(add_ln84_fu_290_p2__0),
        .O(c));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[16]_i_1 
       (.I0(\int_c_reg[31]_0 [1]),
        .I1(\int_c_reg[31]_1 [1]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[17]_i_1 
       (.I0(\int_c_reg[31]_0 [2]),
        .I1(\int_c_reg[31]_1 [2]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[18]_i_1 
       (.I0(\int_c_reg[31]_0 [3]),
        .I1(\int_c_reg[31]_1 [3]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[19]_i_1 
       (.I0(\int_c_reg[31]_0 [4]),
        .I1(\int_c_reg[31]_1 [4]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[1]_i_1 
       (.I0(sf_reg_362[2]),
        .I1(sf_reg_362[1]),
        .I2(tmp_2_reg_352),
        .O(\int_c[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[20]_i_1 
       (.I0(\int_c_reg[31]_0 [5]),
        .I1(\int_c_reg[31]_1 [5]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[21]_i_1 
       (.I0(\int_c_reg[31]_0 [6]),
        .I1(\int_c_reg[31]_1 [6]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[22]_i_1 
       (.I0(\int_c_reg[31]_0 [7]),
        .I1(\int_c_reg[31]_1 [7]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[23]_i_1 
       (.I0(\int_c_reg[31]_0 [8]),
        .I1(\int_c_reg[31]_1 [8]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[24]_i_1 
       (.I0(\int_c_reg[31]_0 [9]),
        .I1(\int_c_reg[31]_1 [9]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[25]_i_1 
       (.I0(\int_c_reg[31]_0 [10]),
        .I1(\int_c_reg[31]_1 [10]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[26]_i_1 
       (.I0(\int_c_reg[31]_0 [11]),
        .I1(\int_c_reg[31]_1 [11]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[27]_i_1 
       (.I0(\int_c_reg[31]_0 [12]),
        .I1(\int_c_reg[31]_1 [12]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[28]_i_1 
       (.I0(\int_c_reg[31]_0 [13]),
        .I1(\int_c_reg[31]_1 [13]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[29]_i_1 
       (.I0(\int_c_reg[31]_0 [14]),
        .I1(\int_c_reg[31]_1 [14]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[2]_i_1 
       (.I0(sf_reg_362[3]),
        .I1(sf_reg_362[2]),
        .I2(tmp_2_reg_352),
        .O(\int_c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[30]_i_1 
       (.I0(\int_c_reg[31]_0 [15]),
        .I1(\int_c_reg[31]_1 [15]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \int_c[31]_i_1 
       (.I0(or_ln56_reg_348),
        .I1(Q[1]),
        .I2(or_ln51_reg_344),
        .O(c_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \int_c[31]_i_2 
       (.I0(\int_c_reg[31]_0 [16]),
        .I1(\int_c_reg[31]_1 [16]),
        .I2(\int_c_reg[31]_i_3_n_2 ),
        .O(\int_c[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[3]_i_1 
       (.I0(sf_reg_362[4]),
        .I1(sf_reg_362[3]),
        .I2(tmp_2_reg_352),
        .O(\int_c[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[4]_i_1 
       (.I0(sf_reg_362[5]),
        .I1(sf_reg_362[4]),
        .I2(tmp_2_reg_352),
        .O(\int_c[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[5]_i_1 
       (.I0(sf_reg_362[6]),
        .I1(sf_reg_362[5]),
        .I2(tmp_2_reg_352),
        .O(\int_c[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \int_c[6]_i_1 
       (.I0(st_reg_357),
        .I1(sf_reg_362[6]),
        .I2(tmp_2_reg_352),
        .O(\int_c[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    int_c_ap_vld_i_1
       (.I0(c_ap_vld),
        .I1(int_c_ap_vld1),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(int_c_ap_vld),
        .O(int_c_ap_vld_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    int_c_ap_vld_i_2
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[0]),
        .O(int_c_ap_vld1));
  FDRE int_c_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_c_ap_vld_i_1_n_0),
        .Q(int_c_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[0] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[0]_i_1_n_0 ),
        .Q(int_c[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[10] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[3]),
        .Q(int_c[10]),
        .R(SR));
  CARRY4 \int_c_reg[10]_i_1 
       (.CI(1'b0),
        .CO({\int_c_reg[10]_i_1_n_0 ,\int_c_reg[10]_i_1_n_1 ,\int_c_reg[10]_i_1_n_2 ,\int_c_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\int_c_reg[31]_2 [3:0]),
        .O(add_ln84_fu_290_p2[3:0]),
        .S({\int_c[10]_i_2_n_0 ,\int_c[10]_i_3_n_0 ,\int_c[10]_i_4_n_0 ,\int_c[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[11] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[4]),
        .Q(int_c[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[12] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[5]),
        .Q(int_c[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[13] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[6]),
        .Q(int_c[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[14] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[7]),
        .Q(int_c[14]),
        .R(SR));
  CARRY4 \int_c_reg[14]_i_1 
       (.CI(\int_c_reg[10]_i_1_n_0 ),
        .CO({\int_c_reg[14]_i_1_n_0 ,\int_c_reg[14]_i_1_n_1 ,\int_c_reg[14]_i_1_n_2 ,\int_c_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\int_c_reg[31]_2 [7:4]),
        .O(add_ln84_fu_290_p2[7:4]),
        .S({\int_c[14]_i_2_n_0 ,\int_c[14]_i_3_n_0 ,\int_c[14]_i_4_n_0 ,\int_c[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[15] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(c),
        .Q(int_c[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[16] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[16]_i_1_n_0 ),
        .Q(int_c[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[17] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[17]_i_1_n_0 ),
        .Q(int_c[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[18] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[18]_i_1_n_0 ),
        .Q(int_c[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[19] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[19]_i_1_n_0 ),
        .Q(int_c[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[1] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[1]_i_1_n_0 ),
        .Q(int_c[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[20] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[20]_i_1_n_0 ),
        .Q(int_c[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[21] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[21]_i_1_n_0 ),
        .Q(int_c[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[22] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[22]_i_1_n_0 ),
        .Q(int_c[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[23] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[23]_i_1_n_0 ),
        .Q(int_c[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[24] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[24]_i_1_n_0 ),
        .Q(int_c[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[25] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[25]_i_1_n_0 ),
        .Q(int_c[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[26] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[26]_i_1_n_0 ),
        .Q(int_c[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[27] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[27]_i_1_n_0 ),
        .Q(int_c[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[28] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[28]_i_1_n_0 ),
        .Q(int_c[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[29] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[29]_i_1_n_0 ),
        .Q(int_c[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[2] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[2]_i_1_n_0 ),
        .Q(int_c[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[30] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[30]_i_1_n_0 ),
        .Q(int_c[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[31] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[31]_i_2_n_0 ),
        .Q(int_c[31]),
        .R(SR));
  CARRY4 \int_c_reg[31]_i_3 
       (.CI(\int_c_reg[14]_i_1_n_0 ),
        .CO({\NLW_int_c_reg[31]_i_3_CO_UNCONNECTED [3:2],\int_c_reg[31]_i_3_n_2 ,\NLW_int_c_reg[31]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_int_c_reg[31]_i_3_O_UNCONNECTED [3:1],add_ln84_fu_290_p2__0}),
        .S({1'b0,1'b0,1'b1,\int_c_reg[31]_2 [8]}));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[3] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[3]_i_1_n_0 ),
        .Q(int_c[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[4] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[4]_i_1_n_0 ),
        .Q(int_c[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[5] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[5]_i_1_n_0 ),
        .Q(int_c[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[6] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(\int_c[6]_i_1_n_0 ),
        .Q(int_c[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[7] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[0]),
        .Q(int_c[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[8] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[1]),
        .Q(int_c[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[9] 
       (.C(ap_clk),
        .CE(c_ap_vld),
        .D(add_ln84_fu_290_p2[2]),
        .Q(int_c[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \or_ln51_reg_344[0]_i_1 
       (.I0(\or_ln51_reg_344[0]_i_2_n_0 ),
        .I1(zext_ln66_fu_207_p1[7]),
        .I2(zext_ln66_fu_207_p1[6]),
        .I3(zext_ln66_fu_207_p1[4]),
        .I4(zext_ln66_fu_207_p1[5]),
        .I5(icmp_ln51_1_fu_155_p2),
        .O(or_ln51_fu_161_p2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \or_ln51_reg_344[0]_i_2 
       (.I0(zext_ln66_fu_207_p1[2]),
        .I1(zext_ln66_fu_207_p1[3]),
        .I2(zext_ln66_fu_207_p1[0]),
        .I3(zext_ln66_fu_207_p1[1]),
        .O(\or_ln51_reg_344[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \or_ln51_reg_344[0]_i_3 
       (.I0(\int_b_reg[31]_0 [12]),
        .I1(\int_b_reg[31]_0 [11]),
        .I2(\int_b_reg[31]_0 [13]),
        .I3(\int_b_reg[31]_0 [14]),
        .I4(\or_ln51_reg_344[0]_i_4_n_0 ),
        .O(icmp_ln51_1_fu_155_p2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \or_ln51_reg_344[0]_i_4 
       (.I0(\int_b_reg[31]_0 [9]),
        .I1(\int_b_reg[31]_0 [10]),
        .I2(\int_b_reg[31]_0 [7]),
        .I3(\int_b_reg[31]_0 [8]),
        .O(\or_ln51_reg_344[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_ln56_reg_348[0]_i_1 
       (.I0(or_ln56_fu_179_p2),
        .I1(Q[0]),
        .I2(or_ln51_fu_161_p2),
        .I3(or_ln56_reg_348),
        .O(\ap_CS_fsm_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_1 
       (.I0(int_c_ap_vld),
        .I1(int_c[0]),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\int_b_reg[31]_0 [0]),
        .I4(\rdata[31]_i_6_n_0 ),
        .I5(\int_a_reg[31]_0 [0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[10]_i_1 
       (.I0(int_c[10]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [10]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[3]),
        .O(\rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[11]_i_1 
       (.I0(int_c[11]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [11]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[4]),
        .O(\rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[12]_i_1 
       (.I0(int_c[12]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [12]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[5]),
        .O(\rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[13]_i_1 
       (.I0(int_c[13]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [13]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[6]),
        .O(\rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[14]_i_1 
       (.I0(int_c[14]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [14]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[7]),
        .O(\rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[15]_i_1 
       (.I0(int_c[15]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [15]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [7]),
        .O(\rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[16]_i_1 
       (.I0(int_c[16]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [16]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [8]),
        .O(\rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[17]_i_1 
       (.I0(int_c[17]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [17]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [9]),
        .O(\rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[18]_i_1 
       (.I0(int_c[18]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [18]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [10]),
        .O(\rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[19]_i_1 
       (.I0(int_c[19]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [19]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [11]),
        .O(\rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_1 
       (.I0(int_c[1]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [1]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [1]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[20]_i_1 
       (.I0(int_c[20]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [20]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [12]),
        .O(\rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[21]_i_1 
       (.I0(int_c[21]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [21]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [13]),
        .O(\rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[22]_i_1 
       (.I0(int_c[22]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [22]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [14]),
        .O(\rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[23]_i_1 
       (.I0(int_c[23]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [23]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [15]),
        .O(\rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[24]_i_1 
       (.I0(int_c[24]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [24]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [16]),
        .O(\rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[25]_i_1 
       (.I0(int_c[25]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [25]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [17]),
        .O(\rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[26]_i_1 
       (.I0(int_c[26]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [26]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [18]),
        .O(\rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[27]_i_1 
       (.I0(int_c[27]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [27]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [19]),
        .O(\rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[28]_i_1 
       (.I0(int_c[28]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [28]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [20]),
        .O(\rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[29]_i_1 
       (.I0(int_c[29]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [29]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [21]),
        .O(\rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[2]_i_1 
       (.I0(int_c[2]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [2]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [2]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[30]_i_1 
       (.I0(int_c[30]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [30]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [22]),
        .O(\rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCBB00000000)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(\rdata[31]_i_4_n_0 ),
        .I5(ar_hs),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[31]_i_3 
       (.I0(int_c[31]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [31]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [23]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[31]_i_5 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[1]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[0]),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001001000000)) 
    \rdata[31]_i_6 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[3]_i_1 
       (.I0(int_c[3]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [3]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [3]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[4]_i_1 
       (.I0(int_c[4]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [4]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [4]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[5]_i_1 
       (.I0(int_c[5]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [5]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [5]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[6]_i_1 
       (.I0(int_c[6]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [6]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(\int_a_reg[31]_0 [6]),
        .O(\rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[7]_i_1 
       (.I0(int_c[7]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [7]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[0]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[8]_i_1 
       (.I0(int_c[8]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [8]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[1]),
        .O(\rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[9]_i_1 
       (.I0(int_c[9]),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(\int_b_reg[31]_0 [9]),
        .I3(\rdata[31]_i_6_n_0 ),
        .I4(zext_ln66_fu_207_p1[2]),
        .O(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[0]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[31]_i_3_n_0 ),
        .Q(s_axi_control_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_2_reg_352[0]_i_1 
       (.I0(or_ln51_fu_161_p2),
        .I1(Q[0]),
        .I2(or_ln56_fu_179_p2),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \tmp_2_reg_352[0]_i_2 
       (.I0(\tmp_2_reg_352[0]_i_3_n_0 ),
        .I1(zext_ln66_fu_207_p1[7]),
        .I2(zext_ln66_fu_207_p1[6]),
        .I3(zext_ln66_fu_207_p1[4]),
        .I4(zext_ln66_fu_207_p1[5]),
        .I5(icmp_ln56_1_fu_173_p2),
        .O(or_ln56_fu_179_p2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tmp_2_reg_352[0]_i_3 
       (.I0(zext_ln66_fu_207_p1[2]),
        .I1(zext_ln66_fu_207_p1[3]),
        .I2(zext_ln66_fu_207_p1[0]),
        .I3(zext_ln66_fu_207_p1[1]),
        .O(\tmp_2_reg_352[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \tmp_2_reg_352[0]_i_4 
       (.I0(\int_b_reg[31]_0 [12]),
        .I1(\int_b_reg[31]_0 [11]),
        .I2(\int_b_reg[31]_0 [13]),
        .I3(\int_b_reg[31]_0 [14]),
        .I4(\tmp_2_reg_352[0]_i_5_n_0 ),
        .O(icmp_ln56_1_fu_173_p2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tmp_2_reg_352[0]_i_5 
       (.I0(\int_b_reg[31]_0 [9]),
        .I1(\int_b_reg[31]_0 [10]),
        .I2(\int_b_reg[31]_0 [7]),
        .I3(\int_b_reg[31]_0 [8]),
        .O(\tmp_2_reg_352[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mulBF16_mul_8ns_8ns_16_1_1" *) 
module design_1_mulBF16_0_0_mulBF16_mul_8ns_8ns_16_1_1
   (P,
    p,
    p_0);
  output [8:0]P;
  input [6:0]p;
  input [6:0]p_0;

  wire [8:0]P;
  wire [6:0]p;
  wire [6:0]p_0;

  design_1_mulBF16_0_0_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0 mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0_U
       (.P(P),
        .p_0(p),
        .p_1(p_0));
endmodule

(* ORIG_REF_NAME = "mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0" *) 
module design_1_mulBF16_0_0_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0
   (P,
    p_0,
    p_1);
  output [8:0]P;
  input [6:0]p_0;
  input [6:0]p_1;

  wire [8:0]P;
  wire [6:0]p_0;
  wire [6:0]p_1;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_88;
  wire p_n_89;
  wire p_n_99;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,p_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,p_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:18],p_n_88,p_n_89,P,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
