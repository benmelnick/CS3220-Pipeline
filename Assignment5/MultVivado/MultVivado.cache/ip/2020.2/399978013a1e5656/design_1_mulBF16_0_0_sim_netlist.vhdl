-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Apr 25 11:52:58 2021
-- Host        : synestia9 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mulBF16_0_0_sim_netlist.vhdl
-- Design      : design_1_mulBF16_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_control_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    or_ln51_fu_161_p2 : out STD_LOGIC;
    \int_b_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \int_a_reg[31]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    or_ln56_reg_348 : in STD_LOGIC;
    or_ln51_reg_344 : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \int_c_reg[31]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \int_c_reg[31]_1\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sf_reg_362 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tmp_2_reg_352 : in STD_LOGIC;
    st_reg_357 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    \int_c_reg[31]_2\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    exponent_b_reg_339 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_control_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \add_ln84_1_reg_367[8]_i_2_n_0\ : STD_LOGIC;
  signal add_ln84_fu_290_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \add_ln84_fu_290_p2__0\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal ar_hs : STD_LOGIC;
  signal c : STD_LOGIC_VECTOR ( 15 to 15 );
  signal c_ap_vld : STD_LOGIC;
  signal icmp_ln51_1_fu_155_p2 : STD_LOGIC;
  signal icmp_ln56_1_fu_173_p2 : STD_LOGIC;
  signal int_a : STD_LOGIC;
  signal int_a0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_a[31]_i_3_n_0\ : STD_LOGIC;
  signal \^int_a_reg[31]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal int_b : STD_LOGIC;
  signal int_b0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^int_b_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_c : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_c[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[10]_i_2_n_0\ : STD_LOGIC;
  signal \int_c[10]_i_3_n_0\ : STD_LOGIC;
  signal \int_c[10]_i_4_n_0\ : STD_LOGIC;
  signal \int_c[10]_i_5_n_0\ : STD_LOGIC;
  signal \int_c[14]_i_2_n_0\ : STD_LOGIC;
  signal \int_c[14]_i_3_n_0\ : STD_LOGIC;
  signal \int_c[14]_i_4_n_0\ : STD_LOGIC;
  signal \int_c[14]_i_5_n_0\ : STD_LOGIC;
  signal \int_c[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[25]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[26]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[29]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[30]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_c[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_c[6]_i_1_n_0\ : STD_LOGIC;
  signal int_c_ap_vld : STD_LOGIC;
  signal int_c_ap_vld1 : STD_LOGIC;
  signal int_c_ap_vld_i_1_n_0 : STD_LOGIC;
  signal \int_c_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_c_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \int_c_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \int_c_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \int_c_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_c_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \int_c_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \int_c_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \int_c_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \^or_ln51_fu_161_p2\ : STD_LOGIC;
  signal \or_ln51_reg_344[0]_i_2_n_0\ : STD_LOGIC;
  signal \or_ln51_reg_344[0]_i_4_n_0\ : STD_LOGIC;
  signal or_ln56_fu_179_p2 : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal \tmp_2_reg_352[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_2_reg_352[0]_i_5_n_0\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal zext_ln66_fu_207_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_int_c_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_c_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \add_ln84_1_reg_367[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_a[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_a[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_a[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_a[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_a[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_a[14]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_a[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_a[16]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_a[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_a[18]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_a[19]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_a[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_a[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_a[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_a[22]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_a[23]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_a[24]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_a[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_a[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_a[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_a[28]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_a[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_a[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_a[30]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_a[31]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_a[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_a[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_a[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_a[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_a[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_a[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_a[9]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_b[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_b[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_b[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_b[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_b[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_b[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_b[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_b[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_b[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_b[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_b[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_b[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_b[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_b[21]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_b[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_b[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_b[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_b[25]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_b[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_b[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_b[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_b[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_b[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_b[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_b[31]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_b[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_b[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_b[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_b[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_b[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_b[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_b[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_c[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_c[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_c[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_c[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \int_c[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_c[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_c[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_c[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_c[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_c[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_c[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_c[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_c[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_c[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \int_c[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \int_c[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \or_ln51_reg_344[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \or_ln51_reg_344[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \or_ln56_reg_348[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_2_reg_352[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_2_reg_352[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tmp_2_reg_352[0]_i_5\ : label is "soft_lutpair2";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  \int_a_reg[31]_0\(23 downto 0) <= \^int_a_reg[31]_0\(23 downto 0);
  \int_b_reg[31]_0\(31 downto 0) <= \^int_b_reg[31]_0\(31 downto 0);
  or_ln51_fu_161_p2 <= \^or_ln51_fu_161_p2\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F747"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_control_rvalid\,
      I3 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444F477"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
\add_ln84_1_reg_367[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(0),
      I1 => P(0),
      O => D(0)
    );
\add_ln84_1_reg_367[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(0),
      I1 => P(0),
      I2 => zext_ln66_fu_207_p1(1),
      O => D(1)
    );
\add_ln84_1_reg_367[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"37C8"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(0),
      I1 => zext_ln66_fu_207_p1(1),
      I2 => P(0),
      I3 => zext_ln66_fu_207_p1(2),
      O => D(2)
    );
\add_ln84_1_reg_367[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37FFC800"
    )
        port map (
      I0 => P(0),
      I1 => zext_ln66_fu_207_p1(1),
      I2 => zext_ln66_fu_207_p1(0),
      I3 => zext_ln66_fu_207_p1(2),
      I4 => zext_ln66_fu_207_p1(3),
      O => D(3)
    );
\add_ln84_1_reg_367[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F7FFFFFA0800000"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(2),
      I1 => zext_ln66_fu_207_p1(0),
      I2 => zext_ln66_fu_207_p1(1),
      I3 => P(0),
      I4 => zext_ln66_fu_207_p1(3),
      I5 => zext_ln66_fu_207_p1(4),
      O => D(4)
    );
\add_ln84_1_reg_367[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_ln84_1_reg_367[8]_i_2_n_0\,
      I1 => zext_ln66_fu_207_p1(5),
      O => D(5)
    );
\add_ln84_1_reg_367[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \add_ln84_1_reg_367[8]_i_2_n_0\,
      I1 => zext_ln66_fu_207_p1(5),
      I2 => zext_ln66_fu_207_p1(6),
      O => D(6)
    );
\add_ln84_1_reg_367[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"807F"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(5),
      I1 => \add_ln84_1_reg_367[8]_i_2_n_0\,
      I2 => zext_ln66_fu_207_p1(6),
      I3 => zext_ln66_fu_207_p1(7),
      O => D(7)
    );
\add_ln84_1_reg_367[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(5),
      I1 => \add_ln84_1_reg_367[8]_i_2_n_0\,
      I2 => zext_ln66_fu_207_p1(6),
      I3 => zext_ln66_fu_207_p1(7),
      O => D(8)
    );
\add_ln84_1_reg_367[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800800000000000"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(4),
      I1 => zext_ln66_fu_207_p1(2),
      I2 => zext_ln66_fu_207_p1(0),
      I3 => zext_ln66_fu_207_p1(1),
      I4 => P(0),
      I5 => zext_ln66_fu_207_p1(3),
      O => \add_ln84_1_reg_367[8]_i_2_n_0\
    );
\int_a[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(0),
      O => int_a0(0)
    );
\int_a[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(3),
      O => int_a0(10)
    );
\int_a[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(4),
      O => int_a0(11)
    );
\int_a[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(5),
      O => int_a0(12)
    );
\int_a[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(6),
      O => int_a0(13)
    );
\int_a[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(7),
      O => int_a0(14)
    );
\int_a[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(7),
      O => int_a0(15)
    );
\int_a[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(8),
      O => int_a0(16)
    );
\int_a[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(9),
      O => int_a0(17)
    );
\int_a[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(10),
      O => int_a0(18)
    );
\int_a[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(11),
      O => int_a0(19)
    );
\int_a[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(1),
      O => int_a0(1)
    );
\int_a[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(12),
      O => int_a0(20)
    );
\int_a[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(13),
      O => int_a0(21)
    );
\int_a[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(14),
      O => int_a0(22)
    );
\int_a[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(15),
      O => int_a0(23)
    );
\int_a[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(16),
      O => int_a0(24)
    );
\int_a[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(17),
      O => int_a0(25)
    );
\int_a[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(18),
      O => int_a0(26)
    );
\int_a[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(19),
      O => int_a0(27)
    );
\int_a[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(20),
      O => int_a0(28)
    );
\int_a[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(21),
      O => int_a0(29)
    );
\int_a[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(2),
      O => int_a0(2)
    );
\int_a[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(22),
      O => int_a0(30)
    );
\int_a[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \int_a[31]_i_3_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      O => int_a
    );
\int_a[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(23),
      O => int_a0(31)
    );
\int_a[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[1]\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => s_axi_control_WVALID,
      O => \int_a[31]_i_3_n_0\
    );
\int_a[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(3),
      O => int_a0(3)
    );
\int_a[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(4),
      O => int_a0(4)
    );
\int_a[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(5),
      O => int_a0(5)
    );
\int_a[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(6),
      O => int_a0(6)
    );
\int_a[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => zext_ln66_fu_207_p1(0),
      O => int_a0(7)
    );
\int_a[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(1),
      O => int_a0(8)
    );
\int_a[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => zext_ln66_fu_207_p1(2),
      O => int_a0(9)
    );
\int_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(0),
      Q => \^int_a_reg[31]_0\(0),
      R => \^sr\(0)
    );
\int_a_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(10),
      Q => zext_ln66_fu_207_p1(3),
      R => \^sr\(0)
    );
\int_a_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(11),
      Q => zext_ln66_fu_207_p1(4),
      R => \^sr\(0)
    );
\int_a_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(12),
      Q => zext_ln66_fu_207_p1(5),
      R => \^sr\(0)
    );
\int_a_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(13),
      Q => zext_ln66_fu_207_p1(6),
      R => \^sr\(0)
    );
\int_a_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(14),
      Q => zext_ln66_fu_207_p1(7),
      R => \^sr\(0)
    );
\int_a_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(15),
      Q => \^int_a_reg[31]_0\(7),
      R => \^sr\(0)
    );
\int_a_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(16),
      Q => \^int_a_reg[31]_0\(8),
      R => \^sr\(0)
    );
\int_a_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(17),
      Q => \^int_a_reg[31]_0\(9),
      R => \^sr\(0)
    );
\int_a_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(18),
      Q => \^int_a_reg[31]_0\(10),
      R => \^sr\(0)
    );
\int_a_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(19),
      Q => \^int_a_reg[31]_0\(11),
      R => \^sr\(0)
    );
\int_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(1),
      Q => \^int_a_reg[31]_0\(1),
      R => \^sr\(0)
    );
\int_a_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(20),
      Q => \^int_a_reg[31]_0\(12),
      R => \^sr\(0)
    );
\int_a_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(21),
      Q => \^int_a_reg[31]_0\(13),
      R => \^sr\(0)
    );
\int_a_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(22),
      Q => \^int_a_reg[31]_0\(14),
      R => \^sr\(0)
    );
\int_a_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(23),
      Q => \^int_a_reg[31]_0\(15),
      R => \^sr\(0)
    );
\int_a_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(24),
      Q => \^int_a_reg[31]_0\(16),
      R => \^sr\(0)
    );
\int_a_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(25),
      Q => \^int_a_reg[31]_0\(17),
      R => \^sr\(0)
    );
\int_a_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(26),
      Q => \^int_a_reg[31]_0\(18),
      R => \^sr\(0)
    );
\int_a_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(27),
      Q => \^int_a_reg[31]_0\(19),
      R => \^sr\(0)
    );
\int_a_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(28),
      Q => \^int_a_reg[31]_0\(20),
      R => \^sr\(0)
    );
\int_a_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(29),
      Q => \^int_a_reg[31]_0\(21),
      R => \^sr\(0)
    );
\int_a_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(2),
      Q => \^int_a_reg[31]_0\(2),
      R => \^sr\(0)
    );
\int_a_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(30),
      Q => \^int_a_reg[31]_0\(22),
      R => \^sr\(0)
    );
\int_a_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(31),
      Q => \^int_a_reg[31]_0\(23),
      R => \^sr\(0)
    );
\int_a_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(3),
      Q => \^int_a_reg[31]_0\(3),
      R => \^sr\(0)
    );
\int_a_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(4),
      Q => \^int_a_reg[31]_0\(4),
      R => \^sr\(0)
    );
\int_a_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(5),
      Q => \^int_a_reg[31]_0\(5),
      R => \^sr\(0)
    );
\int_a_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(6),
      Q => \^int_a_reg[31]_0\(6),
      R => \^sr\(0)
    );
\int_a_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(7),
      Q => zext_ln66_fu_207_p1(0),
      R => \^sr\(0)
    );
\int_a_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(8),
      Q => zext_ln66_fu_207_p1(1),
      R => \^sr\(0)
    );
\int_a_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_a,
      D => int_a0(9),
      Q => zext_ln66_fu_207_p1(2),
      R => \^sr\(0)
    );
\int_b[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(0),
      O => int_b0(0)
    );
\int_b[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(10),
      O => int_b0(10)
    );
\int_b[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(11),
      O => int_b0(11)
    );
\int_b[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(12),
      O => int_b0(12)
    );
\int_b[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(13),
      O => int_b0(13)
    );
\int_b[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(14),
      O => int_b0(14)
    );
\int_b[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(15),
      O => int_b0(15)
    );
\int_b[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(16),
      O => int_b0(16)
    );
\int_b[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(17),
      O => int_b0(17)
    );
\int_b[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(18),
      O => int_b0(18)
    );
\int_b[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(19),
      O => int_b0(19)
    );
\int_b[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(1),
      O => int_b0(1)
    );
\int_b[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(20),
      O => int_b0(20)
    );
\int_b[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(21),
      O => int_b0(21)
    );
\int_b[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(22),
      O => int_b0(22)
    );
\int_b[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_b_reg[31]_0\(23),
      O => int_b0(23)
    );
\int_b[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(24),
      O => int_b0(24)
    );
\int_b[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(25),
      O => int_b0(25)
    );
\int_b[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(26),
      O => int_b0(26)
    );
\int_b[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(27),
      O => int_b0(27)
    );
\int_b[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(28),
      O => int_b0(28)
    );
\int_b[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(29),
      O => int_b0(29)
    );
\int_b[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(2),
      O => int_b0(2)
    );
\int_b[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(30),
      O => int_b0(30)
    );
\int_b[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \int_a[31]_i_3_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      O => int_b
    );
\int_b[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_b_reg[31]_0\(31),
      O => int_b0(31)
    );
\int_b[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(3),
      O => int_b0(3)
    );
\int_b[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(4),
      O => int_b0(4)
    );
\int_b[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(5),
      O => int_b0(5)
    );
\int_b[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(6),
      O => int_b0(6)
    );
\int_b[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_b_reg[31]_0\(7),
      O => int_b0(7)
    );
\int_b[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(8),
      O => int_b0(8)
    );
\int_b[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_b_reg[31]_0\(9),
      O => int_b0(9)
    );
\int_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(0),
      Q => \^int_b_reg[31]_0\(0),
      R => \^sr\(0)
    );
\int_b_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(10),
      Q => \^int_b_reg[31]_0\(10),
      R => \^sr\(0)
    );
\int_b_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(11),
      Q => \^int_b_reg[31]_0\(11),
      R => \^sr\(0)
    );
\int_b_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(12),
      Q => \^int_b_reg[31]_0\(12),
      R => \^sr\(0)
    );
\int_b_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(13),
      Q => \^int_b_reg[31]_0\(13),
      R => \^sr\(0)
    );
\int_b_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(14),
      Q => \^int_b_reg[31]_0\(14),
      R => \^sr\(0)
    );
\int_b_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(15),
      Q => \^int_b_reg[31]_0\(15),
      R => \^sr\(0)
    );
\int_b_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(16),
      Q => \^int_b_reg[31]_0\(16),
      R => \^sr\(0)
    );
\int_b_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(17),
      Q => \^int_b_reg[31]_0\(17),
      R => \^sr\(0)
    );
\int_b_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(18),
      Q => \^int_b_reg[31]_0\(18),
      R => \^sr\(0)
    );
\int_b_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(19),
      Q => \^int_b_reg[31]_0\(19),
      R => \^sr\(0)
    );
\int_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(1),
      Q => \^int_b_reg[31]_0\(1),
      R => \^sr\(0)
    );
\int_b_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(20),
      Q => \^int_b_reg[31]_0\(20),
      R => \^sr\(0)
    );
\int_b_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(21),
      Q => \^int_b_reg[31]_0\(21),
      R => \^sr\(0)
    );
\int_b_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(22),
      Q => \^int_b_reg[31]_0\(22),
      R => \^sr\(0)
    );
\int_b_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(23),
      Q => \^int_b_reg[31]_0\(23),
      R => \^sr\(0)
    );
\int_b_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(24),
      Q => \^int_b_reg[31]_0\(24),
      R => \^sr\(0)
    );
\int_b_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(25),
      Q => \^int_b_reg[31]_0\(25),
      R => \^sr\(0)
    );
\int_b_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(26),
      Q => \^int_b_reg[31]_0\(26),
      R => \^sr\(0)
    );
\int_b_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(27),
      Q => \^int_b_reg[31]_0\(27),
      R => \^sr\(0)
    );
\int_b_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(28),
      Q => \^int_b_reg[31]_0\(28),
      R => \^sr\(0)
    );
\int_b_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(29),
      Q => \^int_b_reg[31]_0\(29),
      R => \^sr\(0)
    );
\int_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(2),
      Q => \^int_b_reg[31]_0\(2),
      R => \^sr\(0)
    );
\int_b_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(30),
      Q => \^int_b_reg[31]_0\(30),
      R => \^sr\(0)
    );
\int_b_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(31),
      Q => \^int_b_reg[31]_0\(31),
      R => \^sr\(0)
    );
\int_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(3),
      Q => \^int_b_reg[31]_0\(3),
      R => \^sr\(0)
    );
\int_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(4),
      Q => \^int_b_reg[31]_0\(4),
      R => \^sr\(0)
    );
\int_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(5),
      Q => \^int_b_reg[31]_0\(5),
      R => \^sr\(0)
    );
\int_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(6),
      Q => \^int_b_reg[31]_0\(6),
      R => \^sr\(0)
    );
\int_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(7),
      Q => \^int_b_reg[31]_0\(7),
      R => \^sr\(0)
    );
\int_b_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(8),
      Q => \^int_b_reg[31]_0\(8),
      R => \^sr\(0)
    );
\int_b_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_b,
      D => int_b0(9),
      Q => \^int_b_reg[31]_0\(9),
      R => \^sr\(0)
    );
\int_c[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(1),
      I1 => sf_reg_362(0),
      I2 => tmp_2_reg_352,
      O => \int_c[0]_i_1_n_0\
    );
\int_c[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(3),
      I1 => exponent_b_reg_339(3),
      O => \int_c[10]_i_2_n_0\
    );
\int_c[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(2),
      I1 => exponent_b_reg_339(2),
      O => \int_c[10]_i_3_n_0\
    );
\int_c[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(1),
      I1 => exponent_b_reg_339(1),
      O => \int_c[10]_i_4_n_0\
    );
\int_c[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(0),
      I1 => exponent_b_reg_339(0),
      O => \int_c[10]_i_5_n_0\
    );
\int_c[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(7),
      I1 => exponent_b_reg_339(7),
      O => \int_c[14]_i_2_n_0\
    );
\int_c[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(6),
      I1 => exponent_b_reg_339(6),
      O => \int_c[14]_i_3_n_0\
    );
\int_c[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(5),
      I1 => exponent_b_reg_339(5),
      O => \int_c[14]_i_4_n_0\
    );
\int_c[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \int_c_reg[31]_2\(4),
      I1 => exponent_b_reg_339(4),
      O => \int_c[14]_i_5_n_0\
    );
\int_c[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \int_c_reg[31]_0\(0),
      I1 => \int_c_reg[31]_1\(0),
      I2 => \add_ln84_fu_290_p2__0\(8),
      O => c(15)
    );
\int_c[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(1),
      I1 => \int_c_reg[31]_1\(1),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[16]_i_1_n_0\
    );
\int_c[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(2),
      I1 => \int_c_reg[31]_1\(2),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[17]_i_1_n_0\
    );
\int_c[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(3),
      I1 => \int_c_reg[31]_1\(3),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[18]_i_1_n_0\
    );
\int_c[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(4),
      I1 => \int_c_reg[31]_1\(4),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[19]_i_1_n_0\
    );
\int_c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(2),
      I1 => sf_reg_362(1),
      I2 => tmp_2_reg_352,
      O => \int_c[1]_i_1_n_0\
    );
\int_c[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(5),
      I1 => \int_c_reg[31]_1\(5),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[20]_i_1_n_0\
    );
\int_c[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(6),
      I1 => \int_c_reg[31]_1\(6),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[21]_i_1_n_0\
    );
\int_c[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(7),
      I1 => \int_c_reg[31]_1\(7),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[22]_i_1_n_0\
    );
\int_c[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(8),
      I1 => \int_c_reg[31]_1\(8),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[23]_i_1_n_0\
    );
\int_c[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(9),
      I1 => \int_c_reg[31]_1\(9),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[24]_i_1_n_0\
    );
\int_c[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(10),
      I1 => \int_c_reg[31]_1\(10),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[25]_i_1_n_0\
    );
\int_c[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(11),
      I1 => \int_c_reg[31]_1\(11),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[26]_i_1_n_0\
    );
\int_c[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(12),
      I1 => \int_c_reg[31]_1\(12),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[27]_i_1_n_0\
    );
\int_c[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(13),
      I1 => \int_c_reg[31]_1\(13),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[28]_i_1_n_0\
    );
\int_c[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(14),
      I1 => \int_c_reg[31]_1\(14),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[29]_i_1_n_0\
    );
\int_c[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(3),
      I1 => sf_reg_362(2),
      I2 => tmp_2_reg_352,
      O => \int_c[2]_i_1_n_0\
    );
\int_c[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(15),
      I1 => \int_c_reg[31]_1\(15),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[30]_i_1_n_0\
    );
\int_c[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => or_ln56_reg_348,
      I1 => Q(1),
      I2 => or_ln51_reg_344,
      O => c_ap_vld
    );
\int_c[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \int_c_reg[31]_0\(16),
      I1 => \int_c_reg[31]_1\(16),
      I2 => \int_c_reg[31]_i_3_n_2\,
      O => \int_c[31]_i_2_n_0\
    );
\int_c[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(4),
      I1 => sf_reg_362(3),
      I2 => tmp_2_reg_352,
      O => \int_c[3]_i_1_n_0\
    );
\int_c[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(5),
      I1 => sf_reg_362(4),
      I2 => tmp_2_reg_352,
      O => \int_c[4]_i_1_n_0\
    );
\int_c[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => sf_reg_362(6),
      I1 => sf_reg_362(5),
      I2 => tmp_2_reg_352,
      O => \int_c[5]_i_1_n_0\
    );
\int_c[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => st_reg_357(0),
      I1 => sf_reg_362(6),
      I2 => tmp_2_reg_352,
      O => \int_c[6]_i_1_n_0\
    );
int_c_ap_vld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => c_ap_vld,
      I1 => int_c_ap_vld1,
      I2 => s_axi_control_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => int_c_ap_vld,
      O => int_c_ap_vld_i_1_n_0
    );
int_c_ap_vld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(3),
      I5 => s_axi_control_ARADDR(0),
      O => int_c_ap_vld1
    );
int_c_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_c_ap_vld_i_1_n_0,
      Q => int_c_ap_vld,
      R => \^sr\(0)
    );
\int_c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[0]_i_1_n_0\,
      Q => int_c(0),
      R => \^sr\(0)
    );
\int_c_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(3),
      Q => int_c(10),
      R => \^sr\(0)
    );
\int_c_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_c_reg[10]_i_1_n_0\,
      CO(2) => \int_c_reg[10]_i_1_n_1\,
      CO(1) => \int_c_reg[10]_i_1_n_2\,
      CO(0) => \int_c_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_c_reg[31]_2\(3 downto 0),
      O(3 downto 0) => add_ln84_fu_290_p2(3 downto 0),
      S(3) => \int_c[10]_i_2_n_0\,
      S(2) => \int_c[10]_i_3_n_0\,
      S(1) => \int_c[10]_i_4_n_0\,
      S(0) => \int_c[10]_i_5_n_0\
    );
\int_c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(4),
      Q => int_c(11),
      R => \^sr\(0)
    );
\int_c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(5),
      Q => int_c(12),
      R => \^sr\(0)
    );
\int_c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(6),
      Q => int_c(13),
      R => \^sr\(0)
    );
\int_c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(7),
      Q => int_c(14),
      R => \^sr\(0)
    );
\int_c_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_c_reg[10]_i_1_n_0\,
      CO(3) => \int_c_reg[14]_i_1_n_0\,
      CO(2) => \int_c_reg[14]_i_1_n_1\,
      CO(1) => \int_c_reg[14]_i_1_n_2\,
      CO(0) => \int_c_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \int_c_reg[31]_2\(7 downto 4),
      O(3 downto 0) => add_ln84_fu_290_p2(7 downto 4),
      S(3) => \int_c[14]_i_2_n_0\,
      S(2) => \int_c[14]_i_3_n_0\,
      S(1) => \int_c[14]_i_4_n_0\,
      S(0) => \int_c[14]_i_5_n_0\
    );
\int_c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => c(15),
      Q => int_c(15),
      R => \^sr\(0)
    );
\int_c_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[16]_i_1_n_0\,
      Q => int_c(16),
      R => \^sr\(0)
    );
\int_c_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[17]_i_1_n_0\,
      Q => int_c(17),
      R => \^sr\(0)
    );
\int_c_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[18]_i_1_n_0\,
      Q => int_c(18),
      R => \^sr\(0)
    );
\int_c_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[19]_i_1_n_0\,
      Q => int_c(19),
      R => \^sr\(0)
    );
\int_c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[1]_i_1_n_0\,
      Q => int_c(1),
      R => \^sr\(0)
    );
\int_c_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[20]_i_1_n_0\,
      Q => int_c(20),
      R => \^sr\(0)
    );
\int_c_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[21]_i_1_n_0\,
      Q => int_c(21),
      R => \^sr\(0)
    );
\int_c_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[22]_i_1_n_0\,
      Q => int_c(22),
      R => \^sr\(0)
    );
\int_c_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[23]_i_1_n_0\,
      Q => int_c(23),
      R => \^sr\(0)
    );
\int_c_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[24]_i_1_n_0\,
      Q => int_c(24),
      R => \^sr\(0)
    );
\int_c_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[25]_i_1_n_0\,
      Q => int_c(25),
      R => \^sr\(0)
    );
\int_c_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[26]_i_1_n_0\,
      Q => int_c(26),
      R => \^sr\(0)
    );
\int_c_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[27]_i_1_n_0\,
      Q => int_c(27),
      R => \^sr\(0)
    );
\int_c_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[28]_i_1_n_0\,
      Q => int_c(28),
      R => \^sr\(0)
    );
\int_c_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[29]_i_1_n_0\,
      Q => int_c(29),
      R => \^sr\(0)
    );
\int_c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[2]_i_1_n_0\,
      Q => int_c(2),
      R => \^sr\(0)
    );
\int_c_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[30]_i_1_n_0\,
      Q => int_c(30),
      R => \^sr\(0)
    );
\int_c_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[31]_i_2_n_0\,
      Q => int_c(31),
      R => \^sr\(0)
    );
\int_c_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_c_reg[14]_i_1_n_0\,
      CO(3 downto 2) => \NLW_int_c_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_c_reg[31]_i_3_n_2\,
      CO(0) => \NLW_int_c_reg[31]_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 1) => \NLW_int_c_reg[31]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \add_ln84_fu_290_p2__0\(8),
      S(3 downto 1) => B"001",
      S(0) => \int_c_reg[31]_2\(8)
    );
\int_c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[3]_i_1_n_0\,
      Q => int_c(3),
      R => \^sr\(0)
    );
\int_c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[4]_i_1_n_0\,
      Q => int_c(4),
      R => \^sr\(0)
    );
\int_c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[5]_i_1_n_0\,
      Q => int_c(5),
      R => \^sr\(0)
    );
\int_c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => \int_c[6]_i_1_n_0\,
      Q => int_c(6),
      R => \^sr\(0)
    );
\int_c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(0),
      Q => int_c(7),
      R => \^sr\(0)
    );
\int_c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(1),
      Q => int_c(8),
      R => \^sr\(0)
    );
\int_c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_ap_vld,
      D => add_ln84_fu_290_p2(2),
      Q => int_c(9),
      R => \^sr\(0)
    );
\or_ln51_reg_344[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \or_ln51_reg_344[0]_i_2_n_0\,
      I1 => zext_ln66_fu_207_p1(7),
      I2 => zext_ln66_fu_207_p1(6),
      I3 => zext_ln66_fu_207_p1(4),
      I4 => zext_ln66_fu_207_p1(5),
      I5 => icmp_ln51_1_fu_155_p2,
      O => \^or_ln51_fu_161_p2\
    );
\or_ln51_reg_344[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(2),
      I1 => zext_ln66_fu_207_p1(3),
      I2 => zext_ln66_fu_207_p1(0),
      I3 => zext_ln66_fu_207_p1(1),
      O => \or_ln51_reg_344[0]_i_2_n_0\
    );
\or_ln51_reg_344[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^int_b_reg[31]_0\(12),
      I1 => \^int_b_reg[31]_0\(11),
      I2 => \^int_b_reg[31]_0\(13),
      I3 => \^int_b_reg[31]_0\(14),
      I4 => \or_ln51_reg_344[0]_i_4_n_0\,
      O => icmp_ln51_1_fu_155_p2
    );
\or_ln51_reg_344[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^int_b_reg[31]_0\(9),
      I1 => \^int_b_reg[31]_0\(10),
      I2 => \^int_b_reg[31]_0\(7),
      I3 => \^int_b_reg[31]_0\(8),
      O => \or_ln51_reg_344[0]_i_4_n_0\
    );
\or_ln56_reg_348[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => or_ln56_fu_179_p2,
      I1 => Q(0),
      I2 => \^or_ln51_fu_161_p2\,
      I3 => or_ln56_reg_348,
      O => \ap_CS_fsm_reg[0]\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => int_c_ap_vld,
      I1 => int_c(0),
      I2 => \rdata[31]_i_5_n_0\,
      I3 => \^int_b_reg[31]_0\(0),
      I4 => \rdata[31]_i_6_n_0\,
      I5 => \^int_a_reg[31]_0\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(10),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(10),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(3),
      O => \rdata[10]_i_1_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(11),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(11),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(4),
      O => \rdata[11]_i_1_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(12),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(12),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(5),
      O => \rdata[12]_i_1_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(13),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(13),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(6),
      O => \rdata[13]_i_1_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(14),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(14),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(7),
      O => \rdata[14]_i_1_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(15),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(15),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(7),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(16),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(16),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(8),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(17),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(17),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(9),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(18),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(18),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(10),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(19),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(19),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(11),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(1),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(1),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(1),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(20),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(20),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(12),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(21),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(21),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(13),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(22),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(22),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(14),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(23),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(23),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(15),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(24),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(24),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(16),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(25),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(25),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(17),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(26),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(26),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(18),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(27),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(27),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(19),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(28),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(28),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(20),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(29),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(29),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(21),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(2),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(2),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(2),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(30),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(30),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(22),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCBB00000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(5),
      I4 => \rdata[31]_i_4_n_0\,
      I5 => ar_hs,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(31),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(31),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(23),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      O => \rdata[31]_i_4_n_0\
    );
\rdata[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(3),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[31]_i_5_n_0\
    );
\rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001001000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(3),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[31]_i_6_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(3),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(3),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(3),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(4),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(4),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(4),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(5),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(5),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(5),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(6),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(6),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => \^int_a_reg[31]_0\(6),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(7),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(7),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(0),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(8),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(8),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(1),
      O => \rdata[8]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => int_c(9),
      I1 => \rdata[31]_i_5_n_0\,
      I2 => \^int_b_reg[31]_0\(9),
      I3 => \rdata[31]_i_6_n_0\,
      I4 => zext_ln66_fu_207_p1(2),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_control_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_control_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_control_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_control_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_control_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_control_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_control_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_control_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_control_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_control_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_control_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_control_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_control_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_control_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_control_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_control_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_control_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_control_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_control_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_control_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_control_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[31]_i_3_n_0\,
      Q => s_axi_control_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_control_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_control_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_control_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_control_RDATA(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_control_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\tmp_2_reg_352[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^or_ln51_fu_161_p2\,
      I1 => Q(0),
      I2 => or_ln56_fu_179_p2,
      O => E(0)
    );
\tmp_2_reg_352[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \tmp_2_reg_352[0]_i_3_n_0\,
      I1 => zext_ln66_fu_207_p1(7),
      I2 => zext_ln66_fu_207_p1(6),
      I3 => zext_ln66_fu_207_p1(4),
      I4 => zext_ln66_fu_207_p1(5),
      I5 => icmp_ln56_1_fu_173_p2,
      O => or_ln56_fu_179_p2
    );
\tmp_2_reg_352[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => zext_ln66_fu_207_p1(2),
      I1 => zext_ln66_fu_207_p1(3),
      I2 => zext_ln66_fu_207_p1(0),
      I3 => zext_ln66_fu_207_p1(1),
      O => \tmp_2_reg_352[0]_i_3_n_0\
    );
\tmp_2_reg_352[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^int_b_reg[31]_0\(12),
      I1 => \^int_b_reg[31]_0\(11),
      I2 => \^int_b_reg[31]_0\(13),
      I3 => \^int_b_reg[31]_0\(14),
      I4 => \tmp_2_reg_352[0]_i_5_n_0\,
      O => icmp_ln56_1_fu_173_p2
    );
\tmp_2_reg_352[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^int_b_reg[31]_0\(9),
      I1 => \^int_b_reg[31]_0\(10),
      I2 => \^int_b_reg[31]_0\(7),
      I3 => \^int_b_reg[31]_0\(8),
      O => \tmp_2_reg_352[0]_i_5_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(5),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0 is
  signal p_n_100 : STD_LOGIC;
  signal p_n_101 : STD_LOGIC;
  signal p_n_102 : STD_LOGIC;
  signal p_n_103 : STD_LOGIC;
  signal p_n_104 : STD_LOGIC;
  signal p_n_105 : STD_LOGIC;
  signal p_n_88 : STD_LOGIC;
  signal p_n_89 : STD_LOGIC;
  signal p_n_99 : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-13 {cell *THIS*}}";
begin
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 7) => B"00000000000000000000001",
      A(6 downto 0) => p_1(6 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 7) => B"00000000001",
      B(6 downto 0) => p_0(6 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_p_RnM_P_UNCONNECTED(47 downto 18),
      P(17) => p_n_88,
      P(16) => p_n_89,
      P(15 downto 7) => P(8 downto 0),
      P(6) => p_n_99,
      P(5) => p_n_100,
      P(4) => p_n_101,
      P(3) => p_n_102,
      P(2) => p_n_103,
      P(1) => p_n_104,
      P(0) => p_n_105,
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \^p\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_0 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1 is
begin
mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1_Multiplier_0
     port map (
      P(8 downto 0) => P(8 downto 0),
      p_0(6 downto 0) => \^p\(6 downto 0),
      p_1(6 downto 0) => p_0(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is "2'b10";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16 is
  signal \<const0>\ : STD_LOGIC;
  signal a_read_reg_334 : STD_LOGIC_VECTOR ( 31 downto 15 );
  signal add_ln84_1_fu_239_p2 : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal add_ln84_1_reg_367 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal add_ln84_1_reg_3670 : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal b_read_reg_329 : STD_LOGIC_VECTOR ( 31 downto 15 );
  signal control_s_axi_U_n_10 : STD_LOGIC;
  signal control_s_axi_U_n_11 : STD_LOGIC;
  signal control_s_axi_U_n_12 : STD_LOGIC;
  signal control_s_axi_U_n_13 : STD_LOGIC;
  signal control_s_axi_U_n_14 : STD_LOGIC;
  signal control_s_axi_U_n_15 : STD_LOGIC;
  signal control_s_axi_U_n_16 : STD_LOGIC;
  signal control_s_axi_U_n_17 : STD_LOGIC;
  signal control_s_axi_U_n_18 : STD_LOGIC;
  signal control_s_axi_U_n_19 : STD_LOGIC;
  signal control_s_axi_U_n_20 : STD_LOGIC;
  signal control_s_axi_U_n_21 : STD_LOGIC;
  signal control_s_axi_U_n_37 : STD_LOGIC;
  signal control_s_axi_U_n_38 : STD_LOGIC;
  signal control_s_axi_U_n_39 : STD_LOGIC;
  signal control_s_axi_U_n_40 : STD_LOGIC;
  signal control_s_axi_U_n_41 : STD_LOGIC;
  signal control_s_axi_U_n_42 : STD_LOGIC;
  signal control_s_axi_U_n_43 : STD_LOGIC;
  signal control_s_axi_U_n_44 : STD_LOGIC;
  signal control_s_axi_U_n_45 : STD_LOGIC;
  signal control_s_axi_U_n_46 : STD_LOGIC;
  signal control_s_axi_U_n_47 : STD_LOGIC;
  signal control_s_axi_U_n_48 : STD_LOGIC;
  signal control_s_axi_U_n_49 : STD_LOGIC;
  signal control_s_axi_U_n_5 : STD_LOGIC;
  signal control_s_axi_U_n_50 : STD_LOGIC;
  signal control_s_axi_U_n_51 : STD_LOGIC;
  signal control_s_axi_U_n_52 : STD_LOGIC;
  signal control_s_axi_U_n_53 : STD_LOGIC;
  signal control_s_axi_U_n_6 : STD_LOGIC;
  signal control_s_axi_U_n_61 : STD_LOGIC;
  signal control_s_axi_U_n_62 : STD_LOGIC;
  signal control_s_axi_U_n_69 : STD_LOGIC;
  signal control_s_axi_U_n_7 : STD_LOGIC;
  signal control_s_axi_U_n_70 : STD_LOGIC;
  signal control_s_axi_U_n_8 : STD_LOGIC;
  signal control_s_axi_U_n_9 : STD_LOGIC;
  signal exponent_b_fu_127_p4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal exponent_b_reg_339 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mul_8ns_8ns_16_1_1_U1_n_1 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_2 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_3 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_4 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_5 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_6 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_7 : STD_LOGIC;
  signal mul_8ns_8ns_16_1_1_U1_n_8 : STD_LOGIC;
  signal or_ln51_fu_161_p2 : STD_LOGIC;
  signal or_ln51_reg_344 : STD_LOGIC;
  signal or_ln56_reg_348 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal raw_m_ab_fu_185_p0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal raw_m_ab_fu_185_p1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sf_reg_362 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal st_reg_357 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tmp_2_reg_352 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\a_read_reg_334_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_53,
      Q => a_read_reg_334(15),
      R => '0'
    );
\a_read_reg_334_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_52,
      Q => a_read_reg_334(16),
      R => '0'
    );
\a_read_reg_334_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_51,
      Q => a_read_reg_334(17),
      R => '0'
    );
\a_read_reg_334_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_50,
      Q => a_read_reg_334(18),
      R => '0'
    );
\a_read_reg_334_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_49,
      Q => a_read_reg_334(19),
      R => '0'
    );
\a_read_reg_334_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_48,
      Q => a_read_reg_334(20),
      R => '0'
    );
\a_read_reg_334_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_47,
      Q => a_read_reg_334(21),
      R => '0'
    );
\a_read_reg_334_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_46,
      Q => a_read_reg_334(22),
      R => '0'
    );
\a_read_reg_334_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_45,
      Q => a_read_reg_334(23),
      R => '0'
    );
\a_read_reg_334_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_44,
      Q => a_read_reg_334(24),
      R => '0'
    );
\a_read_reg_334_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_43,
      Q => a_read_reg_334(25),
      R => '0'
    );
\a_read_reg_334_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_42,
      Q => a_read_reg_334(26),
      R => '0'
    );
\a_read_reg_334_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_41,
      Q => a_read_reg_334(27),
      R => '0'
    );
\a_read_reg_334_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_40,
      Q => a_read_reg_334(28),
      R => '0'
    );
\a_read_reg_334_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_39,
      Q => a_read_reg_334(29),
      R => '0'
    );
\a_read_reg_334_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_38,
      Q => a_read_reg_334(30),
      R => '0'
    );
\a_read_reg_334_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_37,
      Q => a_read_reg_334(31),
      R => '0'
    );
\add_ln84_1_reg_367_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => control_s_axi_U_n_69,
      Q => add_ln84_1_reg_367(0),
      R => '0'
    );
\add_ln84_1_reg_367_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(1),
      Q => add_ln84_1_reg_367(1),
      R => '0'
    );
\add_ln84_1_reg_367_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(2),
      Q => add_ln84_1_reg_367(2),
      R => '0'
    );
\add_ln84_1_reg_367_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(3),
      Q => add_ln84_1_reg_367(3),
      R => '0'
    );
\add_ln84_1_reg_367_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(4),
      Q => add_ln84_1_reg_367(4),
      R => '0'
    );
\add_ln84_1_reg_367_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(5),
      Q => add_ln84_1_reg_367(5),
      R => '0'
    );
\add_ln84_1_reg_367_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => add_ln84_1_fu_239_p2(6),
      Q => add_ln84_1_reg_367(6),
      R => '0'
    );
\add_ln84_1_reg_367_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => control_s_axi_U_n_62,
      Q => add_ln84_1_reg_367(7),
      R => '0'
    );
\add_ln84_1_reg_367_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => control_s_axi_U_n_61,
      Q => add_ln84_1_reg_367(8),
      R => '0'
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state1,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\b_read_reg_329_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_21,
      Q => b_read_reg_329(15),
      R => '0'
    );
\b_read_reg_329_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_20,
      Q => b_read_reg_329(16),
      R => '0'
    );
\b_read_reg_329_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_19,
      Q => b_read_reg_329(17),
      R => '0'
    );
\b_read_reg_329_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_18,
      Q => b_read_reg_329(18),
      R => '0'
    );
\b_read_reg_329_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_17,
      Q => b_read_reg_329(19),
      R => '0'
    );
\b_read_reg_329_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_16,
      Q => b_read_reg_329(20),
      R => '0'
    );
\b_read_reg_329_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_15,
      Q => b_read_reg_329(21),
      R => '0'
    );
\b_read_reg_329_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_14,
      Q => b_read_reg_329(22),
      R => '0'
    );
\b_read_reg_329_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_13,
      Q => b_read_reg_329(23),
      R => '0'
    );
\b_read_reg_329_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_12,
      Q => b_read_reg_329(24),
      R => '0'
    );
\b_read_reg_329_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_11,
      Q => b_read_reg_329(25),
      R => '0'
    );
\b_read_reg_329_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_10,
      Q => b_read_reg_329(26),
      R => '0'
    );
\b_read_reg_329_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_9,
      Q => b_read_reg_329(27),
      R => '0'
    );
\b_read_reg_329_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_8,
      Q => b_read_reg_329(28),
      R => '0'
    );
\b_read_reg_329_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_7,
      Q => b_read_reg_329(29),
      R => '0'
    );
\b_read_reg_329_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_6,
      Q => b_read_reg_329(30),
      R => '0'
    );
\b_read_reg_329_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => control_s_axi_U_n_5,
      Q => b_read_reg_329(31),
      R => '0'
    );
control_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_control_s_axi
     port map (
      D(8) => control_s_axi_U_n_61,
      D(7) => control_s_axi_U_n_62,
      D(6 downto 1) => add_ln84_1_fu_239_p2(6 downto 1),
      D(0) => control_s_axi_U_n_69,
      E(0) => add_ln84_1_reg_3670,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      P(0) => p_0_in,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[0]\ => control_s_axi_U_n_70,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      exponent_b_reg_339(7 downto 0) => exponent_b_reg_339(7 downto 0),
      \int_a_reg[31]_0\(23) => control_s_axi_U_n_37,
      \int_a_reg[31]_0\(22) => control_s_axi_U_n_38,
      \int_a_reg[31]_0\(21) => control_s_axi_U_n_39,
      \int_a_reg[31]_0\(20) => control_s_axi_U_n_40,
      \int_a_reg[31]_0\(19) => control_s_axi_U_n_41,
      \int_a_reg[31]_0\(18) => control_s_axi_U_n_42,
      \int_a_reg[31]_0\(17) => control_s_axi_U_n_43,
      \int_a_reg[31]_0\(16) => control_s_axi_U_n_44,
      \int_a_reg[31]_0\(15) => control_s_axi_U_n_45,
      \int_a_reg[31]_0\(14) => control_s_axi_U_n_46,
      \int_a_reg[31]_0\(13) => control_s_axi_U_n_47,
      \int_a_reg[31]_0\(12) => control_s_axi_U_n_48,
      \int_a_reg[31]_0\(11) => control_s_axi_U_n_49,
      \int_a_reg[31]_0\(10) => control_s_axi_U_n_50,
      \int_a_reg[31]_0\(9) => control_s_axi_U_n_51,
      \int_a_reg[31]_0\(8) => control_s_axi_U_n_52,
      \int_a_reg[31]_0\(7) => control_s_axi_U_n_53,
      \int_a_reg[31]_0\(6 downto 0) => raw_m_ab_fu_185_p1(6 downto 0),
      \int_b_reg[31]_0\(31) => control_s_axi_U_n_5,
      \int_b_reg[31]_0\(30) => control_s_axi_U_n_6,
      \int_b_reg[31]_0\(29) => control_s_axi_U_n_7,
      \int_b_reg[31]_0\(28) => control_s_axi_U_n_8,
      \int_b_reg[31]_0\(27) => control_s_axi_U_n_9,
      \int_b_reg[31]_0\(26) => control_s_axi_U_n_10,
      \int_b_reg[31]_0\(25) => control_s_axi_U_n_11,
      \int_b_reg[31]_0\(24) => control_s_axi_U_n_12,
      \int_b_reg[31]_0\(23) => control_s_axi_U_n_13,
      \int_b_reg[31]_0\(22) => control_s_axi_U_n_14,
      \int_b_reg[31]_0\(21) => control_s_axi_U_n_15,
      \int_b_reg[31]_0\(20) => control_s_axi_U_n_16,
      \int_b_reg[31]_0\(19) => control_s_axi_U_n_17,
      \int_b_reg[31]_0\(18) => control_s_axi_U_n_18,
      \int_b_reg[31]_0\(17) => control_s_axi_U_n_19,
      \int_b_reg[31]_0\(16) => control_s_axi_U_n_20,
      \int_b_reg[31]_0\(15) => control_s_axi_U_n_21,
      \int_b_reg[31]_0\(14 downto 7) => exponent_b_fu_127_p4(7 downto 0),
      \int_b_reg[31]_0\(6 downto 0) => raw_m_ab_fu_185_p0(6 downto 0),
      \int_c_reg[31]_0\(16 downto 0) => b_read_reg_329(31 downto 15),
      \int_c_reg[31]_1\(16 downto 0) => a_read_reg_334(31 downto 15),
      \int_c_reg[31]_2\(8 downto 0) => add_ln84_1_reg_367(8 downto 0),
      or_ln51_fu_161_p2 => or_ln51_fu_161_p2,
      or_ln51_reg_344 => or_ln51_reg_344,
      or_ln56_reg_348 => or_ln56_reg_348,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(5 downto 0),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      sf_reg_362(6 downto 0) => sf_reg_362(6 downto 0),
      st_reg_357(0) => st_reg_357(6),
      tmp_2_reg_352 => tmp_2_reg_352
    );
\exponent_b_reg_339_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(0),
      Q => exponent_b_reg_339(0),
      R => '0'
    );
\exponent_b_reg_339_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(1),
      Q => exponent_b_reg_339(1),
      R => '0'
    );
\exponent_b_reg_339_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(2),
      Q => exponent_b_reg_339(2),
      R => '0'
    );
\exponent_b_reg_339_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(3),
      Q => exponent_b_reg_339(3),
      R => '0'
    );
\exponent_b_reg_339_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(4),
      Q => exponent_b_reg_339(4),
      R => '0'
    );
\exponent_b_reg_339_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(5),
      Q => exponent_b_reg_339(5),
      R => '0'
    );
\exponent_b_reg_339_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(6),
      Q => exponent_b_reg_339(6),
      R => '0'
    );
\exponent_b_reg_339_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => exponent_b_fu_127_p4(7),
      Q => exponent_b_reg_339(7),
      R => '0'
    );
mul_8ns_8ns_16_1_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16_mul_8ns_8ns_16_1_1
     port map (
      P(8) => p_0_in,
      P(7) => mul_8ns_8ns_16_1_1_U1_n_1,
      P(6) => mul_8ns_8ns_16_1_1_U1_n_2,
      P(5) => mul_8ns_8ns_16_1_1_U1_n_3,
      P(4) => mul_8ns_8ns_16_1_1_U1_n_4,
      P(3) => mul_8ns_8ns_16_1_1_U1_n_5,
      P(2) => mul_8ns_8ns_16_1_1_U1_n_6,
      P(1) => mul_8ns_8ns_16_1_1_U1_n_7,
      P(0) => mul_8ns_8ns_16_1_1_U1_n_8,
      \^p\(6 downto 0) => raw_m_ab_fu_185_p1(6 downto 0),
      p_0(6 downto 0) => raw_m_ab_fu_185_p0(6 downto 0)
    );
\or_ln51_reg_344_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => or_ln51_fu_161_p2,
      Q => or_ln51_reg_344,
      R => '0'
    );
\or_ln56_reg_348_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_70,
      Q => or_ln56_reg_348,
      R => '0'
    );
\sf_reg_362_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_8,
      Q => sf_reg_362(0),
      R => '0'
    );
\sf_reg_362_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_7,
      Q => sf_reg_362(1),
      R => '0'
    );
\sf_reg_362_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_6,
      Q => sf_reg_362(2),
      R => '0'
    );
\sf_reg_362_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_5,
      Q => sf_reg_362(3),
      R => '0'
    );
\sf_reg_362_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_4,
      Q => sf_reg_362(4),
      R => '0'
    );
\sf_reg_362_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_3,
      Q => sf_reg_362(5),
      R => '0'
    );
\sf_reg_362_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_2,
      Q => sf_reg_362(6),
      R => '0'
    );
\st_reg_357_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => mul_8ns_8ns_16_1_1_U1_n_1,
      Q => st_reg_357(6),
      R => '0'
    );
\tmp_2_reg_352_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => add_ln84_1_reg_3670,
      D => p_0_in,
      Q => tmp_2_reg_352,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mulBF16_0_0,mulBF16,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mulBF16,Vivado 2020.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_control_RREADY : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mulBF16
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => s_axi_control_AWADDR(5 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
