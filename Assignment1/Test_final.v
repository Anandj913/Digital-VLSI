`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:10 03/08/2020
// Design Name:   left_right_shifter
// Module Name:   F:/Digital VLSI/assignment1/Test_final.v
// Project Name:  assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: left_right_shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_final;

	// Inputs
	reg [31:0] A;
	reg [4:0] B;
	reg R;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	left_right_shifter uut (
		.A(A), 
		.B(B), 
		.R(R), 
		.C(C)
	);

	initial begin
		$monitor(" Time=%5d, A=%b, B=%b, R=%b Output=%b \n", $time, A,B,R,C);
		// Initialize Inputs
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00001; //1 left
		R = 1'b0;
		$display("Starting....");
		// Wait 100 ns for global reset to finish
		#50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b01111; //15 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b10000; //16 left
		R = 1'b0;
      #50;

      A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b10100; //20 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b11110; //30 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b01001; //9 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00100; //4 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00000; //0 left
		R = 1'b0;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00001; //1 right
		R = 1'b1;
		#50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b01111; //15 right
		R = 1'b1;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b10000; //16 right
		R = 1'b1;
      #50;

      A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b10100; //20 right
		R = 1'b1;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b11110; //30 right
		R = 1'b1;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b01001; //9 right
		R = 1'b1;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00100; //4 right
		R = 1'b1;
      #50;
		
		A[31:0] = 32'b00000000000000001111111111111111;
		B[4:0] = 5'b00000; //0 right
		R = 1'b1;
      #50;
		
		
		$finish;

	end
      
endmodule

