 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:08:59 05/05/2020 
// Design Name: 
// Module Name:    vending_machine 
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
module vending_machine( input coin, input clk, output drink, output change
    );
	 reg drink;
	 reg change;
	 parameter stop = 2'b00, five = 2'b01, ten = 2'b10;
	 
	 reg [1:0]state;
	 
	 
	 
	 initial begin
	 drink = 1'b0;
	 change = 1'b0;
	 state = stop;
	 end
	 
	 always @(posedge clk)
	 begin
		 case(state)
		 stop:
		 begin
			 if(coin)
				 begin
				 state <= ten;
				 drink <= 1'b0;
				 change <= 1'b0;
				 end
			 else
				begin
				state <= five;
				drink <= 1'b0;
				change <= 1'b0;
				end
		 end
		 five:
		 begin
			if(coin)
				 begin
				 state <= stop;
				 drink <= 1'b1;
				 change <= 1'b0;
				 end
			else
				begin
				state <= ten;
				drink <= 1'b0;
				change <= 1'b0;
				end
		 end
		 ten:
		 begin
			 if(coin)
				 begin
				 state <= stop;
				 drink <= 1'b1;
				 change <= 1'b1;
				 end
			 else
				begin
				state <= stop;
				drink <= 1'b1;
				change <= 1'b0;
				end
		 end
		 default:
		 begin
			 state <= stop;
			 drink <= 1'b0;
			 change <= 1'b0;
		 end
		 endcase
	 end
	 
endmodule
