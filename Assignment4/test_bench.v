`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:42:30 05/12/2020
// Design Name:   GCD_stein
// Module Name:   F:/Digital VLSI/Assignment4/test_bench.v
// Project Name:  Assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GCD_stein
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench;

	// Inputs
	reg [7:0] P;
	reg [7:0] Q;
	reg rst;

	// Outputs
	wire [7:0] R;

	// Instantiate the Unit Under Test (UUT)
	GCD_stein uut (
		.P(P), 
		.Q(Q), 
		.rst(rst), 
		.R(R)
	);

	initial begin
		$monitor("P = %d, Q = %d, R = %d", P, Q, R);
		// Initialize Inputs
		P = 0;
		Q = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#50;
		rst = 0;
		#3;
		P = 8;
		Q = 4;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 4;
		Q = 0;
		rst = 1;
		

		#50;
		rst = 0;
		#3;
		P = 0;
		Q = 0;
		rst = 1;
			
		
		#50;
		rst = 0;
		#3;
		P = 4;
		Q = 4;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 3;
		Q = 0;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 0;
		Q = 3;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 3;
		Q = 3;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 10;
		Q = 4;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 100;
		Q = 25;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 25;
		Q = 100;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 120;
		Q = 10;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 67;
		Q = 9;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 64;
		Q = 8'b10001000;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 8'b10001000;
		Q = 8'b10000100;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 8'b10001000;
		Q = 64;
		rst = 1;
		
		
		#50;
		rst = 0;
		#3;
		P = 0;
		Q = 8'b10000001;
		rst = 1;
		
	end
	
	initial begin
	#900;
	$finish;
	end
      
endmodule

