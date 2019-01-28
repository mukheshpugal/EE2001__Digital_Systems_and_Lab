module ha(sum, cout, i1, i2);
	input i1, i2;
	output sum, cout;

	xor x1(sum, i1, i2);
	and a1(cout, i1, i2);
	
endmodule
