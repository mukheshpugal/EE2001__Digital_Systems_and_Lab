module dmux4_b (i0, i1, i2, i3, s0, s1, in);

	input in;
	output i0;
	output i1;
	output i2;
	output i3;
	input s0;
	input s1;

	reg i0, i1, i2, i3;

	always@(in or s0 or s1)
	begin

		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		
		if (!s0 && !s1)
			i0 = in;
		else if (!s0 && s1)
			i1 = in; 
		else if (s0 && !s1)
			i2 = in;
		else if (s0 && s1)
			i3 = in;
	end

endmodule