`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:53:26 05/27/2020
// Design Name:   generateHour
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/generateHour_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generateHour
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module generateHour_test;

	// Inputs
	reg clk;
	reg reset;
	reg key;

	// Outputs
	wire [3:0] h1;
	wire [3:0] h2;
	wire en_out;

	// Instantiate the Unit Under Test (UUT)
	generateHour uut (
		.clk(clk), 
		.reset(reset), 
		.h1(h1), 
		.h2(h2), 
		.en_out(en_out),
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

