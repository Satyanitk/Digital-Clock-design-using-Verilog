`timescale 1ms / 1ms
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:13:31 05/27/2020 
// Design Name: 
// Module Name:    Mod23Counter 
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
module Mod24Counter(clk, out, en_out, rst, key);
    input clk, rst, key;
	 output reg [7:0] out;
	 output reg en_out;

	always @(posedge clk or posedge rst) begin
	if (key) begin
		if (rst) begin
			out<=8'b00000000;
			en_out<=1'b0;
			end
		else if (out == 8'b00010111) begin
			out <= 8'b00000000;
			en_out <= 1'b1;
			end		
		else begin
			out <= out+1;
			en_out <= 1'b0;
			end
		end
	end
	
endmodule
