`timescale 1ns/100ps

module testbench_mux_4;
	
	wire out_b,out_d;
	reg i0,i1,i2,i3;
	reg s0,s1;

	mux4_b mb(out_b, i0, i1, i2, i3, s0, s1);
	mux4_d md(out_d, i0, i1, i2, i3, s0, s1);

	initial
		begin
		
			$timeformat(-9,1,"ns",5);
			$monitor("At time t=%t, i0=%b, i1=%b, i2=%b, i3=%b, s0=%b, s1=%b------out_b=%b, out_d=%b", $time, i0, i1, i2, i3, s0, s1, out_b, out_d);
				i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b1; s0=0; s1=0;
			#10 i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b1; s0=0; s1=1;
			#10 i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b1; s0=1; s1=0;
			#10 i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b1; s0=1; s1=1;

			#10 $finish;

		end

endmodule