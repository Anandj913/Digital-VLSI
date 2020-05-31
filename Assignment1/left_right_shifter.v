`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:54 03/08/2020 
// Design Name: 
// Module Name:    left_right_shifter 
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
module left_right_shifter( input [31:0]A, input [4:0]B, input R, output [31:0]C
    );
wire [31:0]W0;
wire [31:0]W1;

Fliper stage0(.a(A), .b(W0), .Select(R));
Left_shifter stage1(.a(W0), .b(B), .c(W1));
Fliper stage2(.a(W1), .b(C), .Select(R)); 

endmodule
