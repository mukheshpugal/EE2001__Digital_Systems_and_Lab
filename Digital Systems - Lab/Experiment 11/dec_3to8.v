`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:39 04/01/2019 
// Design Name: 
// Module Name:    dec_3to8 
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
module dec_3to8(a, l);

	input [2:0] a;
	output reg [7:0] l;
	

	always@(a)
	begin
	
		case(a)
		
			3'b000 : l = 8'b00000001;
			3'b001 : l = 8'b00000010;
			3'b010 : l = 8'b00000100;
			3'b011 : l = 8'b00001000;
			3'b100 : l = 8'b00010000;
			3'b101 : l = 8'b00100000;
			3'b110 : l = 8'b01000000;
			3'b111 : l = 8'b10000000;
		
			default : l = 8'b00000000;
		
		endcase
	
	end
	
endmodule