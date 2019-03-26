`timescale 1ns/100ps

module test_fa;

	wire sum, cout;
	reg i1, i2, cin;

	fa DUT(sum, cout, i1, i2, cin);

	initial
	begin
	$timeformat(-9,1,"ns" ,5);
	$monitor("At t = %t, a = %b, b = %b, cin = %b, sum = %b, cout = %b", $time, i1, i2, cin, sum, cout);
	i1 = 0; i2 = 0; cin = 0;
	#10 i1 = 0; i2 = 0; cin = 1;
	#10 i1 = 0; i2 = 1; cin = 0;
	#10 i1 = 0; i2 = 1; cin = 1;
	#10 i1 = 1; i2 = 0; cin = 0;
	#10 i1 = 1; i2 = 0; cin = 1;
	#10 i1 = 1; i2 = 1; cin = 0;
	#10 i1 = 1; i2 = 1; cin = 1;

	#10 $finish;
	end
endmodule