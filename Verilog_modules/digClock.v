`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:10:39 05/27/2020 
// Design Name: 
// Module Name:    digClock 
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
module digClock(clk, key, reset, minup, hrup, s1, s2, m1, m2, h1, h2);
	input wire key, clk, reset, minup, hrup;
	output wire [3:0] s1, s2, m1, m2, h1, h2;
	wire min_en_out, hr_en_out, rst_en_out;

	generateSec seconds(.clk(clk), .reset(reset | rst_en_out), .s1(s1), .s2(s2), .min_en(min_en_out), .key(key));
	generateMin minutes(.clk(min_en_out | minup), .reset(reset | rst_en_out), .m1(m1), .m2(m2), .hr_en(hr_en_out), .key(key));
	generateHour hours(.clk(hr_en_out | hrup), .reset(reset | rst_en_out), .h1(h1), .h2(h2), .en_out(rst_en_out), .key(key));
		

endmodule
