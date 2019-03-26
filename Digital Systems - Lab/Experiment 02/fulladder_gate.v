module fa (sum, cout, i1, i2, cin);
	
	input i1, i2, cin;
	output sum, cout;

	wire t1, t2, t3;

	xor x1(sum, i1, i2, cin);
	and a1(t1, i1, i2);
	and a2(t2, i2, cin);
	and a3(t3, i1, cin);
	or o1(cout, t1, t2, t3);

endmodule