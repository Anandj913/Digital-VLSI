`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:48 04/27/2020 
// Design Name: 
// Module Name:    partial_mul 
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
module partial_mul(
	input [6:0]A, 
	input b,
	output [6:0]P
    );
assign P[0] = A[0]&b;
assign P[1] = A[1]&b;
assign P[2] = A[2]&b;
assign P[3] = A[3]&b;
assign P[4] = A[4]&b;
assign P[5] = A[5]&b;
assign P[6] = A[6]&b;

endmodule
