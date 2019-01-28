`timescale 1ns/100ps

module test_5bit_adder;
	
	initial begin
		$dumpfile("five_bit_adder.vcd");
		$dumpvars(0, test_5bit_adder); //Name of testbench module
	end

	wire[4:0] sum;
	wire cout;
	reg[4:0] i1;
	reg[4:0] i2;
	reg cin;

	five_bit_adder DUT(sum, cout, cin, i1, i2);

	initial
	begin
	$timeformat(-9,1,"ns",5);
	$monitor("At t = %t, a = %5b, b = %5b, sum = %5b, cout = %b", $time, i1, i2, sum, cout);
	i1 = 5'b10101; i2 = 5'b10010; cin=1'b0;

	#10 $finish;
	end

endmodule