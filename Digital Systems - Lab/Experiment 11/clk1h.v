`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:38 04/02/2019 
// Design Name: 
// Module Name:    clk1h 
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
module clk1h(input clk, input rst, output clk1hz);
	 reg clk1hnew;
	 reg[24:0] counter;
	 
	 initial begin 
		counter = 0;
		clk1hnew = 0;
	 end
	 
	 always @(posedge clk)
	 begin
		if(!rst==0)
			clk1hnew <= 0;
		else if (counter==0)
			 begin
				counter <= 24999999;
				clk1hnew <= ~clk1hz;
			 end
		else
			counter <= counter - 1;
	 end	
	 assign clk1hz = clk1hnew;
endmodule

