`timescale 1ms / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:33 05/24/2020
// Design Name:   Mod10Counter
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/Mod10Counter_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mod10Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mod10Counter_test;

	// Inputs
	reg clk;
	reg rst;
	reg key;

	// Outputs
	wire [3:0] out;
	wire en_out;

	// Instantiate the Unit Under Test (UUT)
	Mod10Counter uut (
		.clk(clk),
		.rst(rst),
		.out(out), 
		.en_out(en_out),
		.key(key)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		forever #500 clk=~clk;
        
		// Add stimulus here

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

