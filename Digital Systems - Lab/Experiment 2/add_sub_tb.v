`timescale 1ns/100ps

module add_sub_tb;
	wire [4:0] sum;
	wire cout;
	reg [3:0] i1;
	reg [3:0] i2;
	reg S;

	add_sub c1 (i1,i2,S,sum,cout);

	initial begin
		$timeformat(-9,1,"ns",5);
		$monitor("At t= %t, a= %4b, b= %4b, s=%b, sum/difference = %5b", $time, i1, i2, S, sum);

		i1=4'b1001;i2 = 4'b1010; S = 1;
		#10 i1=4'b0010;i2 = 4'b1100; S = 1;
		#10 i1=4'b0101;i2 = 4'b0011; S = 0;
		#10 i1=4'b1001;i2 = 4'b0110; S = 0;
		#10 $finish;
	end
endmodule