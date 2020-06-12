`timescale 1ms / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:55 05/24/2020 
// Design Name: 
// Module Name:    Mod6Counter 
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
module Mod6Counter(clk, out, en_out, rst, key);
    input clk, rst, key;
	 output reg [3:0] out;
	 output reg en_out;

	always @(posedge clk or posedge rst) begin
	if (key) begin
		if (rst) begin
			out<=4'b0000;
			en_out<=1'b0;
			end
		else if (out == 4'b0101) begin
			out <= 4'b0000;
			en_out <= 1'b1;
			end		
		else begin
		out <= out+1;
		en_out <= 1'b0;
			end
		end
	end
	
endmodule
