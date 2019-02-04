module mux4_d (out,i0,i1,i2,i3,s0,s1);

	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;

	output out;

	wire t0, t1, t2, t3;

	assign t0 = ~s1 & ~s0 & i0;
	assign t1 = s1 & ~s0 & i1;
	assign t2 = ~s1 & s0 & i2;
	assign t3 = s1 & s0 & i3;
	assign out = t0 | t1 | t2 | t3;

endmodule