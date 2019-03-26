module dmux4_d (i0, i1, i2, i3, s0, s1, in);

	input in;
	output i0;
	output i1;
	output i2;
	output i3;
	input s0;
	input s1;

	assign i0 = ~s1 & ~s0 & in;
	assign i1 = s1 & ~s0 & in;
	assign i2 = ~s1 & s0 & in;
	assign i3 = s1 & s0 & in;

endmodule