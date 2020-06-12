`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:33 05/26/2020 
// Design Name: 
// Module Name:    generateHour 
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
module generateHour(clk, reset, h1, h2, en_out, key);
	input wire clk, reset, key;
	output wire [3:0] h1,h2;
	output wire en_out;
	wire [7:0] binary;

	Mod24Counter hour1(.clk(clk), .out(binary), .en_out(en_out), .rst(reset), .key(key));
	bin2bcd hour2(.number(binary), .tens(h2), .ones(h1));
endmodule
