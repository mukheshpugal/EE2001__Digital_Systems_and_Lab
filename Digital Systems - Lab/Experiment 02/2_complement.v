module twoscomp(a2c,a);
	input [3:0] a;
	output [4:0] a2c;
	wire [4:0] temp;
	wire [4:0] tempnew;
	wire [4:0] x = 5'b00001;
	wire cin =1'b0;


	genvar i;
	generate
		for(i =0;i<4;i=i+1)
		begin
			assign temp[i] = a[i];
		end
	endgenerate

	assign temp[4] = a[3];

	assign tempnew = ~(temp);

	five_bit_adder fba(a2c,cout,cin,tempnew,x);
endmodule