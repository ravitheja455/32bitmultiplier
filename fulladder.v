`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:53 07/03/2013 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(a, b, cin, sum, carry);
    input a;
    input b;
    input cin;
    output sum;
    output carry;
assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);

endmodule
