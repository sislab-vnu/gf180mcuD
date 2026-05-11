module counter_8bit (clk_i,
    en_i,
    ovf_o,
    rst_ni,
    count_o);
 input clk_i;
 input en_i;
 output ovf_o;
 input rst_ni;
 output [7:0] count_o;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net1;
 wire net11;
 wire net2;
 wire clknet_0_clk_i;
 wire clknet_1_0__leaf_clk_i;
 wire clknet_1_1__leaf_clk_i;

 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Left_17 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Right_0 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_10_Left_27 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_10_Right_10 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_11_Left_28 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_11_Right_11 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_12_Left_29 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_12_Right_12 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_13_Left_30 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_13_Right_13 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_14_Left_31 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_14_Right_14 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_15_Left_32 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_15_Right_15 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_16_Left_33 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_16_Right_16 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Left_18 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Right_1 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Left_19 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Right_2 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Left_20 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Right_3 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_4_Left_21 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_4_Right_4 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_5_Left_22 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_5_Right_5 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_6_Left_23 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_6_Right_6 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_7_Left_24 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_7_Right_7 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_8_Left_25 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_8_Right_8 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_9_Left_26 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_9_Right_9 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_34 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_35 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_36 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_10_50 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_10_51 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_11_52 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_12_53 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_12_54 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_13_55 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_14_56 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_14_57 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_15_58 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_16_59 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_16_60 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_16_61 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_1_37 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_38 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_39 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_40 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_4_41 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_4_42 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_5_43 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_6_44 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_6_45 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_7_46 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_8_47 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_8_48 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_9_49 ();
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _34_ (.I(net10),
    .ZN(_09_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _35_ (.I(net9),
    .ZN(_10_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _36_ (.I(net8),
    .ZN(_11_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _37_ (.I(net7),
    .ZN(_12_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _38_ (.I(net6),
    .ZN(_13_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _39_ (.I(net5),
    .ZN(_14_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _40_ (.I(net2),
    .ZN(_15_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _41_ (.A1(net1),
    .A2(net2),
    .ZN(_16_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _42_ (.A1(net3),
    .A2(net2),
    .ZN(_17_));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _43_ (.A1(net1),
    .A2(net3),
    .B1(_16_),
    .B2(_17_),
    .ZN(_00_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _44_ (.A1(net1),
    .A2(net3),
    .B(net4),
    .ZN(_18_));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _45_ (.A1(net1),
    .A2(net4),
    .A3(net3),
    .ZN(_19_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _46_ (.A1(net2),
    .A2(_19_),
    .ZN(_20_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _47_ (.A1(_18_),
    .A2(_20_),
    .ZN(_01_));
 gf180mcu_fd_sc_mcu7t5v0__and4_1 _48_ (.A1(net1),
    .A2(net5),
    .A3(net4),
    .A4(net3),
    .Z(_21_));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _49_ (.A1(net1),
    .A2(net5),
    .A3(net4),
    .A4(net3),
    .ZN(_22_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _50_ (.A1(net2),
    .A2(_22_),
    .ZN(_23_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _51_ (.A1(_14_),
    .A2(_19_),
    .B(_23_),
    .ZN(_02_));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _52_ (.A1(_13_),
    .A2(_22_),
    .B(net2),
    .ZN(_24_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _53_ (.A1(_13_),
    .A2(_22_),
    .B(_24_),
    .ZN(_03_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _54_ (.A1(net6),
    .A2(_21_),
    .B(net7),
    .ZN(_25_));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _55_ (.A1(_12_),
    .A2(_13_),
    .A3(_22_),
    .ZN(_26_));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _56_ (.A1(_15_),
    .A2(_25_),
    .A3(_26_),
    .ZN(_04_));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _57_ (.A1(_12_),
    .A2(_13_),
    .A3(_22_),
    .B(_11_),
    .ZN(_27_));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _58_ (.A1(net8),
    .A2(net7),
    .A3(net6),
    .A4(_21_),
    .ZN(_28_));
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _59_ (.A1(net2),
    .A2(_27_),
    .A3(_28_),
    .Z(_05_));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _60_ (.A1(net9),
    .A2(net8),
    .A3(net7),
    .ZN(_29_));
 gf180mcu_fd_sc_mcu7t5v0__nor3_1 _61_ (.A1(_13_),
    .A2(_22_),
    .A3(_29_),
    .ZN(_30_));
 gf180mcu_fd_sc_mcu7t5v0__aoi211_1 _62_ (.A1(_10_),
    .A2(_28_),
    .B(_30_),
    .C(_15_),
    .ZN(_06_));
 gf180mcu_fd_sc_mcu7t5v0__oai31_1 _63_ (.A1(_13_),
    .A2(_22_),
    .A3(_29_),
    .B(_09_),
    .ZN(_31_));
 gf180mcu_fd_sc_mcu7t5v0__or4_1 _64_ (.A1(_09_),
    .A2(_13_),
    .A3(_22_),
    .A4(_29_),
    .Z(_32_));
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _65_ (.A1(net2),
    .A2(_31_),
    .A3(_32_),
    .Z(_07_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _66_ (.A1(net11),
    .A2(_16_),
    .ZN(_33_));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _67_ (.A1(_15_),
    .A2(_32_),
    .B(_33_),
    .ZN(_08_));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _68_ (.D(_00_),
    .CLK(clknet_1_1__leaf_clk_i),
    .Q(net3));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _69_ (.D(_01_),
    .CLK(clknet_1_1__leaf_clk_i),
    .Q(net4));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _70_ (.D(_02_),
    .CLK(clknet_1_0__leaf_clk_i),
    .Q(net5));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _71_ (.D(_03_),
    .CLK(clknet_1_0__leaf_clk_i),
    .Q(net6));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _72_ (.D(_04_),
    .CLK(clknet_1_0__leaf_clk_i),
    .Q(net7));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _73_ (.D(_05_),
    .CLK(clknet_1_0__leaf_clk_i),
    .Q(net8));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _74_ (.D(_06_),
    .CLK(clknet_1_0__leaf_clk_i),
    .Q(net9));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _75_ (.D(_07_),
    .CLK(clknet_1_1__leaf_clk_i),
    .Q(net10));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _76_ (.D(_08_),
    .CLK(clknet_1_1__leaf_clk_i),
    .Q(net11));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_16 clkbuf_0_clk_i (.I(clk_i),
    .Z(clknet_0_clk_i));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_16 clkbuf_1_0__f_clk_i (.I(clknet_0_clk_i),
    .Z(clknet_1_0__leaf_clk_i));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_16 clkbuf_1_1__f_clk_i (.I(clknet_0_clk_i),
    .Z(clknet_1_1__leaf_clk_i));
 gf180mcu_fd_sc_mcu7t5v0__clkbuf_2 clkload0 (.I(clknet_1_1__leaf_clk_i));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 input1 (.I(en_i),
    .Z(net1));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 input2 (.I(rst_ni),
    .Z(net2));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output10 (.I(net10),
    .Z(count_o[7]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output11 (.I(net11),
    .Z(ovf_o));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output3 (.I(net3),
    .Z(count_o[0]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output4 (.I(net4),
    .Z(count_o[1]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output5 (.I(net5),
    .Z(count_o[2]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output6 (.I(net6),
    .Z(count_o[3]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output7 (.I(net7),
    .Z(count_o[4]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output8 (.I(net8),
    .Z(count_o[5]));
 gf180mcu_fd_sc_mcu7t5v0__dlyb_1 output9 (.I(net9),
    .Z(count_o[6]));
endmodule
