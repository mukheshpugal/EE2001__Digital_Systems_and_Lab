module add_sub(i1, i2, S, sum, cout);
	
	input [3:0] i1;
	input [3:0] i2;
	input S;
	output [4:0] sum;
	output cout;

	wire [4:0] temp1;
	wire [4:0] temp2;
	wire [4:0] a;
	wire [4:0] x;
	wire cin = 1'b0;
	
	genvar i;
	generate
		for(i =0;i<4;i=i+1)
		begin
			assign a[i] = i1[i];
			assign temp1[i] = i2[i];
		end
	endgenerate

	assign a[4] = i1[3];
	assign temp1[4] = i2[3];

	twoscomp ts(temp2, i2);

	assign x = (S == 1) ? temp1 : temp2;

	five_bit_adder fa(sum,cout,cin,a,x);
	
endmodule