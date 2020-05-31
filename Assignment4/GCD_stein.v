`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:49 05/12/2020 
// Design Name: 
// Module Name:    GCD_stein 
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
module GCD_stein(
	input [7:0]P, input [7:0]Q, input rst, output reg [7:0]R
    );
	 reg [6:0]p; 
	 reg [6:0]q;
	 reg [6:0]temp;
	 integer count = 1;
	 initial begin
	 p = 0;
	 q = 0;
	 temp = 0;
	 end
	 
	 always @(posedge rst)
	 begin
		p = P[6:0]; //MSB is not take as number will be in sign magnitude form so P[7] will be just for sign.
		q = Q[6:0]; //Since GCD of number didn't depends on sign so we just ignore it 
		R = 0;      //Final GCD will always be positive
		temp = p|q;
		count = 1;
		while((temp[0] == 0) && (p != 0) && (q != 0))
		begin
			p = p >> 1;
			q = q >> 1;
			count = count<<1;
			temp = p|q;
		end
		while(q != 0)
		begin
			while((p[0] == 0) && (p != 0) && (q != 0))
			begin
			p = p >> 1;
			end
			while((q[0] == 0) && (q!= 0) && (p != 0))
			begin
			q = q >> 1;
			end
			if( p < q)
			begin
			temp = q;
			q = p;
			p = temp;
			end
			p = p - q;
		end
		R = count*p;
	 end
endmodule
