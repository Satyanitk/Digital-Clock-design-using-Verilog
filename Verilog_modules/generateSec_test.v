`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:11:20 05/27/2020
// Design Name:   generateSec
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/generateSec_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generateSec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module generateSec_test;

	// Inputs
	reg clk;
	reg reset;reg key;

	// Outputs
	wire [3:0] s1;
	wire [3:0] s2;
	wire min_en;

	// Instantiate the Unit Under Test (UUT)
	generateSec uut (
		.clk(clk), 
		.reset(reset), 
		.s1(s1), 
		.s2(s2), 
		.min_en(min_en),
		.key(key)
	);

initial begin
		clk = 0;
		forever #500 clk=~clk;
	end
	
	initial begin
		key=1;
		reset = 1;
		#250;
		reset =0;
		#8850;
		key=0;
	end 
      
endmodule

