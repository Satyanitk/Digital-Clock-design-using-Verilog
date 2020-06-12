`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:18:02 05/27/2020
// Design Name:   digClock
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/digClock_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: digClock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module digClock_test;

	// Inputs
	reg clk;
	reg key;
	reg reset;
	reg minup;
	reg hrup;

	// Outputs
	wire [3:0] s1;
	wire [3:0] s2;
	wire [3:0] m1;
	wire [3:0] m2;
	wire [3:0] h1;
	wire [3:0] h2;

	// Instantiate the Unit Under Test (UUT)
	digClock uut (
		.clk(clk), 
		.key(key), 
		.reset(reset), 
		.minup(minup), 
		.hrup(hrup), 
		.s1(s1), 
		.s2(s2), 
		.m1(m1), 
		.m2(m2), 
		.h1(h1), 
		.h2(h2)
	);

	//generating clock periods, don't comment it out
	initial begin
		clk = 0;
		forever #500 clk=~clk;
	end
	
	//uncomment the below code to observe the normal behaviour of the clock without any interruption like reset, key, minup or hrup
	initial begin
		minup=0;
		hrup=0;
		key=1;
		reset=1;
		#200; reset=0;
	end
	
	//uncomment the code below to check user_control by changing minup, hrup values; comment out the others
	/*initial begin 
		minup=0;
		hrup =0;
		key=1;
		reset = 1;
		#200; reset =0;
		#30000; minup=1; #250; minup=0; #2500; minup=1; #250; minup=0; #2500; minup=1; #250; minup=0;
		#8000; hrup=1; #250; hrup=0;  #2500; hrup=1; #250; hrup=0; #2500; hrup=1; #250; hrup=0;
	end*/
	
	//uncomment the code below to check effect of change in key, reset value; comment out the others
	/*initial begin //to check
		minup=0;
		hrup =0;
		key=1;
		reset = 1;
		#200; reset =0;
		#30000; reset =1; #700; reset=0;
		#8000; key=0; #10000; key = 1;
	end*/
      
endmodule

