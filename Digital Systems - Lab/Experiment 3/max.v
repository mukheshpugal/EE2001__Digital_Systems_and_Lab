module MAX(i1, i2, out);
	
	input [3:0] i1;
	input [3:0] i2;
	output [3:0] out;

	wire [4:0] temp;
	wire [4:0] a;
	wire [4:0] b;
	wire cin = 1'b0;
	wire cout;
	
	genvar i;
	generate
		for(i =0;i<4;i=i+1)
		begin
			assign a[i] = i1[i];
		end
	endgenerate

	assign a[4] = 0;

	twoscomp ts(b, i2);

	five_bit_adder fa(temp,cout,cin,a,b);

	assign out = (temp[4] == 1) ? i2 : i1;
	
endmodule