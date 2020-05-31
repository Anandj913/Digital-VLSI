`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:22:35 04/27/2020
// Design Name:   Modified_bough_wooly_mult
// Module Name:   F:/Digital VLSI/Assignment2/test_bench.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Modified_bough_wooly_mult
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
	reg [6:0] A;
	reg [5:0] B;
	reg t;

	// Outputs
	wire [12:0] P;

	// Instantiate the Unit Under Test (UUT)
	Modified_bough_wooly_mult uut (
		.A(A), 
		.B(B), 
		.t(t), 
		.P(P)
	);

	initial begin
		$monitor(" Time=%5d, a=%b, b=%b, p=%b, t=%b\n",
		$time, A,B,P,t);
		// Initialize Inputs
		#10;
		A[6:0] = 7'b0000000;
		B[5:0] = 6'b00000; 
		t = 1'b0;

		// Wait 100 ns for global reset to finish
		#80;
		// Add stimulus here
		A[6:0] = 7'b0001001; //9*2
		B[5:0] = 6'b000010; 
		t = 1'b0;
		
		#80;
		// Add stimulus here
		A[6:0] = 7'b0011000; //24*1
		B[5:0] = 6'b000001; 
		t = 1'b0;
		
		#80;
		// Add stimulus here
		A[6:0] = 7'b1111011; //123*7
		B[5:0] = 6'b000111; 
		t = 1'b0;
		
		#80;
		// Add stimulus here
		A[6:0] = 7'b1100001; //97*15
		B[5:0] = 6'b001111; 
		t = 1'b0;
		
		#80;
		// Add stimulus here
		A[6:0] = 7'b0101011; //43*45
		B[5:0] = 6'b101101;  
		t = 1'b0;
		#80;
		
		A = -3; 
		B = 3;  
		t = 1'b1;
		
		#80;
		
		A = -55; 
		B = -15;  
		t = 1'b1;
		#80;
		
		A = 9; 
		B = 2;  
		t = 1'b1;
		#80;
		
		A = -10; 
		B = 10;  
		t = 1'b1;
		#80;
		
		A = -60; 
		B = 0;  
		t = 1'b1;
		#80;
		
		A = -45; 
		B = -2;  
		t = 1'b1;
		#80;
		
		A = -2; 
		B = 10;  
		t = 1'b1;
		#40;
		$finish;


	end
      
endmodule
