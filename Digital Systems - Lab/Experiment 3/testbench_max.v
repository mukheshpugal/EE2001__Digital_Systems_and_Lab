`timescale 1ns/1ps

module testbench_max;
	
	wire[3:0] max;
	reg[3:0] i1, i2;

	MAX m(i1,i2,max);

	initial
		begin
		
			$timeformat(-9,1,"ns",5);
			$monitor("At time t=%t, i1=%4b, i2=%4b -------- max=%4b", $time, i1, i2, max);
				i1=4'b1011; i2=4'b1010;
			#10 i1=4'b1001; i2=4'b0000;
			#10 i1=4'b0101; i2=4'b1100;
			#10 i1=4'b1010; i2=4'b0010;

			#10 $finish;

		end

endmodule