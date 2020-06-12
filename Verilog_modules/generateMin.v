`timescale 1ms / 1ms
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:17 05/26/2020 
// Design Name: 
// Module Name:    generateMin 
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
module generateMin(clk, reset, m1, m2, hr_en, key);
    input wire clk, reset, key;
	 output wire [3:0] m1, m2;
	 output wire hr_en;
	 
	 wire enable;
	 Mod10Counter sec1(.clk(clk), .out(m1), .en_out(enable), .rst(reset), .key(key));
	 Mod6Counter sec2(.clk(enable), .out(m2), .en_out(hr_en), .rst(reset), .key(key));
endmodule
