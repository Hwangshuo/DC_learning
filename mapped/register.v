/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sat Feb 11 22:05:23 2023
/////////////////////////////////////////////////////////////


module register ( out, data, load, clk, rst_ );
  output [7:0] out;
  input [7:0] data;
  input load, clk, rst_;
  wire   \d7/qe , \d0/qe , \d1/qe , \d2/qe , \d3/qe , \d4/qe , \d5/qe ,
         \d6/qe , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51;

  INVHD1X U1 ( .A(\d6/qe ), .Z(n11) );
  AOI31HD1X U2 ( .A(rst_), .B(n44), .C(out[6]), .D(n11), .Z(n1) );
  INVHD1X U4 ( .A(\d5/qe ), .Z(n15) );
  AOI31HD1X U5 ( .A(rst_), .B(n45), .C(out[5]), .D(n15), .Z(n2) );
  INVHD1X U7 ( .A(\d4/qe ), .Z(n19) );
  AOI31HD1X U8 ( .A(rst_), .B(n46), .C(out[4]), .D(n19), .Z(n3) );
  INVHD1X U10 ( .A(\d3/qe ), .Z(n23) );
  AOI31HD1X U11 ( .A(rst_), .B(n47), .C(out[3]), .D(n23), .Z(n4) );
  INVHD1X U13 ( .A(\d2/qe ), .Z(n27) );
  AOI31HD1X U14 ( .A(rst_), .B(n48), .C(out[2]), .D(n27), .Z(n5) );
  INVHD1X U16 ( .A(\d1/qe ), .Z(n31) );
  AOI31HD1X U17 ( .A(rst_), .B(n49), .C(out[1]), .D(n31), .Z(n6) );
  INVHD1X U19 ( .A(\d0/qe ), .Z(n35) );
  AOI31HD1X U20 ( .A(rst_), .B(n50), .C(out[0]), .D(n35), .Z(n7) );
  INVHD1X U22 ( .A(\d7/qe ), .Z(n42) );
  AOI31HD1X U23 ( .A(rst_), .B(n51), .C(out[7]), .D(n42), .Z(n8) );
  AOI22HD1X U28 ( .A(load), .B(data[6]), .C(out[6]), .D(n37), .Z(n9) );
  AOI211HD1X U29 ( .A(\d6/qe ), .B(n10), .C(n39), .D(n9), .Z(n12) );
  OAI21HD1X U31 ( .A(n12), .B(n11), .C(n41), .Z(\d6/qe ) );
  AOI22HD1X U34 ( .A(load), .B(data[5]), .C(out[5]), .D(n37), .Z(n13) );
  AOI211HD1X U35 ( .A(\d5/qe ), .B(n14), .C(n39), .D(n13), .Z(n16) );
  OAI21HD1X U36 ( .A(n16), .B(n15), .C(n41), .Z(\d5/qe ) );
  AOI22HD1X U39 ( .A(load), .B(data[4]), .C(out[4]), .D(n37), .Z(n17) );
  AOI211HD1X U40 ( .A(\d4/qe ), .B(n18), .C(n39), .D(n17), .Z(n20) );
  OAI21HD1X U41 ( .A(n20), .B(n19), .C(n41), .Z(\d4/qe ) );
  AOI22HD1X U44 ( .A(load), .B(data[3]), .C(out[3]), .D(n37), .Z(n21) );
  AOI211HD1X U45 ( .A(\d3/qe ), .B(n22), .C(n39), .D(n21), .Z(n24) );
  OAI21HD1X U46 ( .A(n24), .B(n23), .C(n41), .Z(\d3/qe ) );
  AOI22HD1X U49 ( .A(load), .B(data[2]), .C(out[2]), .D(n37), .Z(n25) );
  AOI211HD1X U50 ( .A(\d2/qe ), .B(n26), .C(n39), .D(n25), .Z(n28) );
  OAI21HD1X U51 ( .A(n28), .B(n27), .C(n41), .Z(\d2/qe ) );
  AOI22HD1X U54 ( .A(load), .B(data[1]), .C(out[1]), .D(n37), .Z(n29) );
  AOI211HD1X U55 ( .A(\d1/qe ), .B(n30), .C(n39), .D(n29), .Z(n32) );
  OAI21HD1X U56 ( .A(n32), .B(n31), .C(n41), .Z(\d1/qe ) );
  AOI22HD1X U59 ( .A(load), .B(data[0]), .C(out[0]), .D(n37), .Z(n33) );
  AOI211HD1X U60 ( .A(\d0/qe ), .B(n34), .C(n39), .D(n33), .Z(n36) );
  OAI21HD1X U61 ( .A(n36), .B(n35), .C(n41), .Z(\d0/qe ) );
  AOI22HD1X U64 ( .A(load), .B(data[7]), .C(out[7]), .D(n37), .Z(n38) );
  AOI211HD1X U65 ( .A(\d7/qe ), .B(n40), .C(n39), .D(n38), .Z(n43) );
  OAI21HD1X U66 ( .A(n43), .B(n42), .C(n41), .Z(\d7/qe ) );
  INVHDLX U15 ( .A(n5), .Z(out[2]) );
  INVHDLX U3 ( .A(n1), .Z(out[6]) );
  INVHDLX U6 ( .A(n2), .Z(out[5]) );
  INVHDLX U9 ( .A(n3), .Z(out[4]) );
  INVHDLX U12 ( .A(n4), .Z(out[3]) );
  INVHDLX U21 ( .A(n7), .Z(out[0]) );
  INVHDLX U18 ( .A(n6), .Z(out[1]) );
  INVHDLX U24 ( .A(n8), .Z(out[7]) );
  INVHDLX U63 ( .A(n51), .Z(n40) );
  INVHDLX U33 ( .A(n45), .Z(n14) );
  INVHDLX U25 ( .A(n44), .Z(n10) );
  INVHDLX U43 ( .A(n47), .Z(n22) );
  INVHDLX U38 ( .A(n46), .Z(n18) );
  INVHDLX U53 ( .A(n49), .Z(n30) );
  INVHDLX U48 ( .A(n48), .Z(n26) );
  INVHDLX U58 ( .A(n50), .Z(n34) );
  NAND2B1HDLX U32 ( .AN(n12), .B(clk), .Z(n44) );
  NAND2B1HDLX U37 ( .AN(n16), .B(clk), .Z(n45) );
  NAND2B1HDLX U42 ( .AN(n20), .B(clk), .Z(n46) );
  NAND2B1HDLX U47 ( .AN(n24), .B(clk), .Z(n47) );
  NAND2B1HDLX U52 ( .AN(n28), .B(clk), .Z(n48) );
  NAND2B1HDLX U57 ( .AN(n32), .B(clk), .Z(n49) );
  NAND2B1HDLX U62 ( .AN(n36), .B(clk), .Z(n50) );
  NAND2B1HDLX U67 ( .AN(n43), .B(clk), .Z(n51) );
  AND2HD1X U30 ( .A(clk), .B(rst_), .Z(n41) );
  INVHD1X U68 ( .A(rst_), .Z(n39) );
  INVHDLX U69 ( .A(load), .Z(n37) );
endmodule

