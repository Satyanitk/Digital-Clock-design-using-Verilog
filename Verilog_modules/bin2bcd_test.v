`timescale 1ms / 1ms

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:32:16 05/27/2020
// Design Name:   bin2bcd
// Module Name:   E:/8th_sem/DSD_MiniProject/digitalClock/bin2bcd_test.v
// Project Name:  digitalClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bin2bcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bin2bcd_test;

	// Inputs
	reg [7:0] number;

	// Outputs
	//wire [3:0] hundreds;
	wire [3:0] tens;
	wire [3:0] ones;

	// Instantiate the Unit Under Test (UUT)
	bin2bcd uut (
		.number(number), 
		//.hundreds(hundreds), 
		.tens(tens), 
		.ones(ones)
	);

	initial begin
		// Initialize Inputs
		number = 21;

		// Wait 100 ns for global reset to finish
		#1000;
		number =16;
		#2000;
		number=23;
		#2000; $finish;
        
		// Add stimulus here

	end
      
endmodule

