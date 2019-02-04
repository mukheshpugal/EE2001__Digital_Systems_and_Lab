`timescale 1ns/100ps

module testbench_dmux_4;

	initial begin
			$dumpfile("Demultiplexer_1_to_4.vcd");
			$dumpvars(0, testbench_dmux_4); 
		end
	
	reg in;
	wire i0_b, i1_b, i2_b, i3_b;
	wire i0_d, i1_d, i2_d, i3_d;
	reg s0,s1;

	dmux4_b dmb(i0_b, i1_b, i2_b, i3_b, s0, s1, in);
	dmux4_d dmd(i0_d, i1_d, i2_d, i3_d, s0, s1, in);

	initial
		begin
		
			$timeformat(-9,1,"ns",5);
			$monitor("At time t=%t, s0=%b, s1=%b, in=%b--------i0=%b, i1=%b, i2=%b, i3=%b--------i0=%b, i1=%b, i2=%b, i3=%b", $time, s0, s1, in, i0_b, i1_b, i2_b, i3_b, i0_d, i1_d, i2_d, i3_d);
				s0=1'b0; s1=1'b0; in=1'b1;
			#10	s0=1'b0; s1=1'b1; in=1'b1;
			#10	s0=1'b1; s1=1'b0; in=1'b1;
			#10	s0=1'b1; s1=1'b1; in=1'b1;

			#10 $finish;

		end

endmodule