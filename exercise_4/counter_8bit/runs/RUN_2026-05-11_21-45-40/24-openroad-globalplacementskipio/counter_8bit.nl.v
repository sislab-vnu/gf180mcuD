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

 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Left_23 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_0_Right_0 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_10_Left_33 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_10_Right_10 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_11_Left_34 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_11_Right_11 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_12_Left_35 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_12_Right_12 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_13_Left_36 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_13_Right_13 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_14_Left_37 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_14_Right_14 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_15_Left_38 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_15_Right_15 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_16_Left_39 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_16_Right_16 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_17_Left_40 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_17_Right_17 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_18_Left_41 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_18_Right_18 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_19_Left_42 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_19_Right_19 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Left_24 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_1_Right_1 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_20_Left_43 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_20_Right_20 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_21_Left_44 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_21_Right_21 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_22_Left_45 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_22_Right_22 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Left_25 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_2_Right_2 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Left_26 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_3_Right_3 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_4_Left_27 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_4_Right_4 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_5_Left_28 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_5_Right_5 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_6_Left_29 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_6_Right_6 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_7_Left_30 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_7_Right_7 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_8_Left_31 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_8_Right_8 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_9_Left_32 ();
 gf180mcu_fd_sc_mcu7t5v0__endcap PHY_EDGE_ROW_9_Right_9 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_46 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_47 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_48 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_0_49 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_10_68 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_10_69 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_11_70 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_11_71 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_12_72 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_12_73 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_13_74 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_13_75 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_14_76 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_14_77 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_15_78 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_15_79 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_16_80 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_16_81 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_17_82 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_17_83 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_18_84 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_18_85 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_19_86 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_19_87 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_1_50 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_1_51 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_20_88 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_20_89 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_21_90 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_21_91 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_22_92 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_22_93 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_22_94 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_22_95 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_52 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_2_53 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_54 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_3_55 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_4_56 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_4_57 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_5_58 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_5_59 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_6_60 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_6_61 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_7_62 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_7_63 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_8_64 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_8_65 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_9_66 ();
 gf180mcu_fd_sc_mcu7t5v0__filltie TAP_TAPCELL_ROW_9_67 ();
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _34_ (.I(count_o[7]),
    .ZN(_09_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _35_ (.I(count_o[6]),
    .ZN(_10_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _36_ (.I(count_o[5]),
    .ZN(_11_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _37_ (.I(count_o[4]),
    .ZN(_12_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _38_ (.I(count_o[3]),
    .ZN(_13_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _39_ (.I(count_o[2]),
    .ZN(_14_));
 gf180mcu_fd_sc_mcu7t5v0__clkinv_1 _40_ (.I(rst_ni),
    .ZN(_15_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _41_ (.A1(en_i),
    .A2(rst_ni),
    .ZN(_16_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _42_ (.A1(count_o[0]),
    .A2(rst_ni),
    .ZN(_17_));
 gf180mcu_fd_sc_mcu7t5v0__aoi22_1 _43_ (.A1(en_i),
    .A2(count_o[0]),
    .B1(_16_),
    .B2(_17_),
    .ZN(_00_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _44_ (.A1(en_i),
    .A2(count_o[0]),
    .B(count_o[1]),
    .ZN(_18_));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _45_ (.A1(en_i),
    .A2(count_o[1]),
    .A3(count_o[0]),
    .ZN(_19_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _46_ (.A1(rst_ni),
    .A2(_19_),
    .ZN(_20_));
 gf180mcu_fd_sc_mcu7t5v0__nor2_1 _47_ (.A1(_18_),
    .A2(_20_),
    .ZN(_01_));
 gf180mcu_fd_sc_mcu7t5v0__and4_1 _48_ (.A1(en_i),
    .A2(count_o[2]),
    .A3(count_o[1]),
    .A4(count_o[0]),
    .Z(_21_));
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _49_ (.A1(en_i),
    .A2(count_o[2]),
    .A3(count_o[1]),
    .A4(count_o[0]),
    .ZN(_22_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _50_ (.A1(rst_ni),
    .A2(_22_),
    .ZN(_23_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _51_ (.A1(_14_),
    .A2(_19_),
    .B(_23_),
    .ZN(_02_));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _52_ (.A1(_13_),
    .A2(_22_),
    .B(rst_ni),
    .ZN(_24_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _53_ (.A1(_13_),
    .A2(_22_),
    .B(_24_),
    .ZN(_03_));
 gf180mcu_fd_sc_mcu7t5v0__aoi21_1 _54_ (.A1(count_o[3]),
    .A2(_21_),
    .B(count_o[4]),
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
 gf180mcu_fd_sc_mcu7t5v0__nand4_1 _58_ (.A1(count_o[5]),
    .A2(count_o[4]),
    .A3(count_o[3]),
    .A4(_21_),
    .ZN(_28_));
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _59_ (.A1(rst_ni),
    .A2(_27_),
    .A3(_28_),
    .Z(_05_));
 gf180mcu_fd_sc_mcu7t5v0__nand3_1 _60_ (.A1(count_o[6]),
    .A2(count_o[5]),
    .A3(count_o[4]),
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
 gf180mcu_fd_sc_mcu7t5v0__and3_1 _65_ (.A1(rst_ni),
    .A2(_31_),
    .A3(_32_),
    .Z(_07_));
 gf180mcu_fd_sc_mcu7t5v0__nand2_1 _66_ (.A1(ovf_o),
    .A2(_16_),
    .ZN(_33_));
 gf180mcu_fd_sc_mcu7t5v0__oai21_1 _67_ (.A1(_15_),
    .A2(_32_),
    .B(_33_),
    .ZN(_08_));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _68_ (.D(_00_),
    .CLK(clk_i),
    .Q(count_o[0]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _69_ (.D(_01_),
    .CLK(clk_i),
    .Q(count_o[1]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _70_ (.D(_02_),
    .CLK(clk_i),
    .Q(count_o[2]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _71_ (.D(_03_),
    .CLK(clk_i),
    .Q(count_o[3]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _72_ (.D(_04_),
    .CLK(clk_i),
    .Q(count_o[4]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _73_ (.D(_05_),
    .CLK(clk_i),
    .Q(count_o[5]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _74_ (.D(_06_),
    .CLK(clk_i),
    .Q(count_o[6]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _75_ (.D(_07_),
    .CLK(clk_i),
    .Q(count_o[7]));
 gf180mcu_fd_sc_mcu7t5v0__dffq_1 _76_ (.D(_08_),
    .CLK(clk_i),
    .Q(ovf_o));
endmodule
