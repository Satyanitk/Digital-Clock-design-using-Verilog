`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:28:53 05/27/2020
// Design Name:   Mod24Counter
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/Mod24Counter_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mod24Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mod24Counter_test;

	// Inputs
	reg clk;
	reg rst;
	reg key;

	// Outputs
	wire [7:0] out;
	wire en_out;

	// Instantiate the Unit Under Test (UUT)
	Mod24Counter uut (
		.clk(clk), 
		.out(out), 
		.en_out(en_out), 
		.rst(rst),
		.key(key)
	);

	initial begin
		clk = 0;
		forever #500 clk=~clk;
	end
	
	initial begin
		key=1;
		rst = 1;
		#550;
		rst =0;
		#8850;
		key=0;
	end 
      
endmodule

