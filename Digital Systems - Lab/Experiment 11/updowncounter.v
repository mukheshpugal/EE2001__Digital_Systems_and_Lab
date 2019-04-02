`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:12 04/02/2019 
// Design Name: 
// Module Name:    updowncounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module updowncounter (input clkin, input switch, input reset, output a0, output a1, output a2);	
 
	 reg ck;
	 reg [24:0] counter;
	 reg [2:0] out;
	 
	 initial
	 begin
		counter = 0;
		out = 0;
		ck = 0;
	 end
	 
	 always @ (posedge clkin)
	 begin
		 if(!reset == 0)
			 ck <=0;
		 
		 else if(counter == 0)
		     begin
				 counter <= 24999999;
				 ck <= ~ck;
			 end	
		 else
		 	counter <= counter - 1;
	 end
		 
	 always @ (posedge ck)
	 begin
		 if (switch)
			 begin
				 if (out == 3'b111)
					 out <= 3'b000;
				 else
				 	 out <= out + 1;
			 end
		 else	 
			 begin
				 if (out == 3'b000)
				 	 out <= 3'b111;
				 else
					 out <= out - 1;
			 end
	 end
	 
	 assign a0 = out[0];
	 assign a1 = out[1];
	 assign a2 = out[2];

endmodule