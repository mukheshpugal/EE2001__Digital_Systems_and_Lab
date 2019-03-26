module mux4_b (out, i0, i1, i2, i3, s0, s1);

	output out;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;

	reg out;

	always@(i0 or i1 or i2 or i3 or s0 or s1)
	begin
		if (!s0 && !s1)
			out = i0;
		else if (!s0 && s1)
			out = i1; 
		else if (s0 && !s1)
			out = i2;
		else if (s0 && s1)
			out = i3;
	end

endmodule