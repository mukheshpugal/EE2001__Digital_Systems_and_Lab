`timescale 1ns/100ps

module grey_counter(clk, x, rst, out);
	input clk, x, rst;
	output reg[1:0] out;
	reg[1:0] pr, nx;
	
	always @(posedge clk) 
		begin
			if (rst)
				pr<=2'b0;

			else
			begin
				case({x,pr})
					3'b000: nx = 2'b00;
					3'b001: nx = 2'b01;
					3'b010: nx = 2'b10;
					3'b011: nx = 2'b11;
					3'b100: nx = 2'b01;
					3'b101: nx = 2'b11;
					3'b110: nx = 2'b00;
					3'b111: nx = 2'b10;
					default: nx = 2'b00;
				endcase
				pr <= nx;
				out <= pr;
			end
		end
endmodule

module testbench_gc2bit;
	
	wire[1:0] data;
	reg x,clk,rst;

	initial 
	begin
		$dumpfile("Counter_GC.vcd");
		$dumpvars(0, testbench_gc2bit); 
	end

	grey_counter gc(clk, x, rst, data);

	initial 
	begin
		clk=0;
		forever #5 clk=~clk;
	end

	initial
	begin
		x=1'b1;
		rst=1'b1;
		#5 rst=1'b0;
		#150 x=1'b0;
		#150 x= 1'b1;
		#200 $finish;
	end

endmodule
