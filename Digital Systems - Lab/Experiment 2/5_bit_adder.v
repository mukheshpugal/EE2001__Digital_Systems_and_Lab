module five_bit_adder (sum, cout, cin, i1, i2);

	input [4:0] i1;
	input [4:0] i2;
    input cin;
	output [4:0] sum;
	output cout;

    wire C1, C2, C3, C4;

    fa fa0 (sum[0], C1, i1[0], i2[0], cin);
    fa fa1 (sum[1], C2, i1[1], i2[1], C1);
    fa fa2 (sum[2], C3, i1[2], i2[2], C2);
    fa fa3 (sum[3], C4, i1[3], i2[3], C3);
    fa fa4 (sum[4], cout, i1[4], i2[4], C4);

endmodule