`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:44 07/17/2013
// Design Name:   MUL16
// Module Name:   C:/Xilinx/13.2/ISE_DS/programs/highspeedmulDSP/tb.v
// Project Name:  highspeedmulDSP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUL16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;

	// Outputs
	wire [31:0] p;

	// Instantiate the Unit Under Test (UUT)
	MUL16 uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a=15;b=15;
		#100;a=10;b=9;
		#100;a=65535;b=65535;
        
		// Add stimulus here

	end
      
endmodule

