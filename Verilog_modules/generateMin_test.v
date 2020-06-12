`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:49 05/26/2020
// Design Name:   generateMin
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/generateMin_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generateMin
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module generateMin_test;

	// Inputs
	reg clk;
	reg reset;
	reg key;

	// Outputs
	wire [3:0] m1;
	wire [3:0] m2;
	wire hr_en;

	// Instantiate the Unit Under Test (UUT)
	generateMin uut (
		.clk(clk), 
		.reset(reset), 
		.m1(m1), 
		.m2(m2), 
		.hr_en(hr_en),
		.key(key)
	);

	initial begin
		clk = 0;
		forever #500 clk=~clk;
	end
	
	initial begin
		key=1;
		reset = 1;
		#550;
		reset =0;
		#8850;
		key=0;
	end 
      
endmodule

