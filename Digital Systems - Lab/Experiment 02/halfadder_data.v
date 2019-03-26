module ha (sum, cout, i1, i2);
	
	input i1, i2;
	output sum, cout;

	assign sum = i1 ^ i2;
	assign cout = i1 & i2;

endmodule