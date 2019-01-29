module ha_g(sum, cout, i1, i2);
	input i1, i2;
	output sum, cout;

	xor x1(sum, i1, i2);
	and a1(cout, i1, i2);
	
endmodule

module ha_d(sum, cout, i1, i2);
	
	input i1, i2;
	output sum, cout;

	assign sum = i1 ^ i2;
	assign cout = i1 & i2;

endmodule

module fa_g(sum, cout, i1, i2, cin);
	
	input i1, i2, cin;
	output sum, cout;

	wire t1, t2, t3;

	xor x1(sum, i1, i2, cin);
	and a1(t1, i1, i2);
	and a2(t2, i2, cin);
	and a3(t3, i1, cin);
	or o1(cout, t1, t2, t3);

endmodule

module fa_d(sum, cout, i1, i2, cin);
	
	input i1, i2, cin;
	output sum, cout;

	assign sum = i1 ^ i2 ^ cin;
	assign cout = (i1 & i2) | (i2 & cin) | (i1 & cin);

endmodule

module five_bit_adder (sum, cout, cin, i1, i2);

	input [4:0] i1;
	input [4:0] i2;
    input cin;
	output [4:0] sum;
	output cout;

    wire C1, C2, C3, C4;

    fa_g ha0 (sum[0], C1, i1[0], i2[0], 1'b0);
    fa_g fa1 (sum[1], C2, i1[1], i2[1], C1);
    fa_g fa2 (sum[2], C3, i1[2], i2[2], C2);
    fa_g fa3 (sum[3], C4, i1[3], i2[3], C3);
    fa_g fa4 (sum[4], cout, i1[4], i2[4], C4);

endmodule