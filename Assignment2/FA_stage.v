`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:18 04/27/2020 
// Design Name: 
// Module Name:    FA_stage 
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
module FA_stage( 
	input [6:0]in1, 
	input [6:0]in2,
	output [7:0]out
    );
wire [5:0]W;
Half_adder num1(.a(in1[0]), .b(in2[0]), .c_out(W[0]), .sum(out[0]));	
Full_adder num2(.a(in1[1]), .b(in2[1]), .c_out(W[1]), .sum(out[1]), .c_in(W[0]));
Full_adder num3(.a(in1[2]), .b(in2[2]), .c_out(W[2]), .sum(out[2]), .c_in(W[1]));
Full_adder num4(.a(in1[3]), .b(in2[3]), .c_out(W[3]), .sum(out[3]), .c_in(W[2]));
Full_adder num5(.a(in1[4]), .b(in2[4]), .c_out(W[4]), .sum(out[4]), .c_in(W[3]));
Full_adder num6(.a(in1[5]), .b(in2[5]), .c_out(W[5]), .sum(out[5]), .c_in(W[4]));
Full_adder num7(.a(in1[6]), .b(in2[6]), .c_out(out[7]), .sum(out[6]), .c_in(W[5]));
endmodule
