module fa (sum, cout, i1, i2, cin);
	
	input i1, i2, cin;
	output sum, cout;

	assign sum = i1 ^ i2 ^ cin;
	assign cout = (i1 & i2) | (i2 & cin) | (i1 & cin);

endmodule