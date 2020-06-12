`timescale 1ms / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:19 05/24/2020 
// Design Name: 
// Module Name:    generateSec 
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
module generateSec(clk, reset, s1, s2, min_en, key);
    input wire clk, reset, key;
	 output wire [3:0] s1, s2;
	 output wire min_en;
	 
	 wire enable;
	 Mod10Counter sec1(.clk(clk), .out(s1), .en_out(enable), .rst(reset), .key(key));
	 Mod6Counter sec2(.clk(enable), .out(s2), .en_out(min_en), .rst(reset), .key(key));
endmodule
