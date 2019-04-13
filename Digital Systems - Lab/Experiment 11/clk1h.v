//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Akilesh Kannan
// 
// Create Date:    15:56:38 04/02/2019 
// Design Name: 
// Module Name:    clk1h 
// Project Name: Experiment 11
// Description: Divides a 1 Mhz clock into 1Hz clock
//////////////////////////////////////////////////////////////////////////////////
`timescale 1us / 100ns

module clk1h(input clk, input rst, output clk1hz);
	 reg clk1hnew;
	reg[25:0] counter;
	 
	 initial begin 
		counter = 0;
		clk1hnew = 0;
	 end
	 
	always @(posedge clk or negedge clk)
	 begin
		if(rst)
			clk1hnew <= 0;
		 else if (counter==1000000)
			 begin
				counter <= 0;
				clk1hnew <= ~clk1hz;
			 end
		else
			counter <= counter + 1;
	 end	
	 assign clk1hz = clk1hnew;
endmodule

module test_bench;

	initial 
	begin
		$dumpfile("clk1h.vcd");
		$dumpvars(0,test_bench);
	end
	
	reg clk, rst;
	wire clk1hz;

	clk1h c(clk, rst, clk1hz);

	initial
	begin
		rst=0;
		clk=0;
		forever #1 clk = ~clk;
	end

	initial
	begin
		#1000000 rst=1'b1;
		#1000000 rst=1'b0;
		#4000000 $finish;
	end
endmodule
