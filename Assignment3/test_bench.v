`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:41:22 05/05/2020
// Design Name:   vending_machine
// Module Name:   F:/Digital VLSI/Assignment3/test_bench.v
// Project Name:  Assignment3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vending_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench;

	// Outputs
	wire drink, change;
	reg clock, coin;
	// Instantiate the Unit Under Test (UUT)
	vending_machine uut (.coin(coin), .clk(clock), .drink(drink), .change(change)
	);

	always
	begin
	#100
	clock = ~clock;
	end
	
	initial begin
		$monitor("coin: %b, drink: %b, change: %b", coin, drink, change);
		clock = 1'b0;
		#50
		coin = 1'b0;
		#200
		coin = 1'b0;
		#200 
		coin = 1'b0;
		#200
		coin = 1'b0;
		#200
		coin = 1'b1;
		#200
		coin = 1'b1;
		#200
		coin = 1'b1;
		#200
		coin = 1'b1;
		#200
		coin = 1'b0;
		#200
		coin = 1'b0;
		#200
		coin = 1'b0;
		#200
		coin = 1'b0;
	end
	
	initial 
	#2300 $finish;
      
endmodule

