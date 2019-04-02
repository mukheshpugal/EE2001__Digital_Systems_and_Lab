`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:37 04/02/2019
// Design Name:   multiplier_2bit
// Module Name:   C:/Users/students/Desktop/PSM/exp11/multiplier_2bit/mul_tb.v
// Project Name:  multiplier_2bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier_2bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module testbench_mult;

        initial 
        begin
                $dumpfile("mult_2bit.vcd");
                $dumpvars(0, testbench_mult);
        end

        wire[3:0] out;
        reg[1:0] i1, i2;

        multiplier_2bit m(i1, i2, out);

        initial
        begin

                i1=2'b00; i2=2'b00;
            #10 i1=2'b01; i2=2'b00;
            #10 i1=2'b10; i2=2'b00;
            #10 i1=2'b11; i2=2'b00;
            #10 i1=2'b00; i2=2'b01;
            #10 i1=2'b01; i2=2'b01;
            #10 i1=2'b10; i2=2'b01;
            #10 i1=2'b11; i2=2'b01;
            #10 i1=2'b00; i2=2'b10;
            #10 i1=2'b01; i2=2'b10;
            #10 i1=2'b10; i2=2'b10;
            #10 i1=2'b11; i2=2'b10;
            #10 i1=2'b00; i2=2'b11;
            #10 i1=2'b01; i2=2'b11;
            #10 i1=2'b10; i2=2'b11;
            #10 i1=2'b11; i2=2'b11;

            #10 $finish;
        end

endmodule