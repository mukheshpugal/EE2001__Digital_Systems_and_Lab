`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:33 04/01/2019
// Design Name:   dec_3to8
// Module Name:   C:/Users/students/Desktop/PSM/dec_3to8/test_3to8.v
// Project Name:  dec_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec_3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_3to8;

	// Inputs
	reg [2:0] a;

	// Outputs
	wire [7:0] l;

	// Instantiate the Unit Under Test (UUT)
	dec_3to8 uut (.a(a), .l(l));

	initial 
	begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100
			a = 3'b001;
		#100
			a = 3'b010;
		#100
			a = 3'b011;
        #100
        	a = 3'b100;
        #100
			a = 3'b101;
		#100
			a = 3'b110;
        #100
        	a = 3'b111;
         
	end

	initial
	begin
		$dumpfile("dec_3-8.vcd");
		$dumpvars(0,test_3to8);
	end
      
endmodule

