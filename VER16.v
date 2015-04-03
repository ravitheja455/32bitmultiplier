`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date:    13:49:41 07/04/2013 
// Design Name:
// 
// Module Name:    VER16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VER16(c3,c2,c1,c0,a,b,q,d,e,f,g,h,i,j,k,l,m,n,o,p, sum, cout4, cout3, cout2, cout1);
    input a,b,q,d,e,f,g,h,i,j,k,l,m,n,o,p;
    output sum;
    input  c3,c2,c1,c0;
    output cout1;
    output cout2;
    output cout3;
    output cout4;
	 wire s0,s1,s2,s3,s4,s5,s6;
	 wire [21:4]c;
fulladder f1(c0,a,b,s0,c[4]);
fulladder f2(s0,q,d,s1,c[5]);
fulladder f3(s1,e,f,s2,c[6]);
fulladder f4(s2,g,h,s3,c[7]);
fulladder f5(s3,i,j,s4,c[8]);
fulladder f6(s4,k,l,s5,c[9]);
fulladder f7(s5,m,n,s6,c[10]);
fulladder f8(s6,o,p,sum,c[11]);
fulladder f9(c1,c[4],c[5],c[12],c[13]);
fulladder f10(c[12],c[6],c[7],c[14],c[15]);
fulladder f11(c[14],c[8],c[9],c[16],c[17]);
fulladder f12(c[16],c[10],c[11],cout1,c[18]);
fulladder f13(c2,c[13],c[15],c[19],c[20]);
fulladder f14(c[19],c[17],c[18],cout2,c[21]);
fulladder f15(c3,c[20],c[21],cout3,cout4);

endmodule
