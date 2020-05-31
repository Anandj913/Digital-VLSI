`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:03 04/27/2020 
// Design Name: 
// Module Name:    Modified_bough_wooly_mult 
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
module Modified_bough_wooly_mult(
	input [6:0]A,
	input [5:0]B,
	input t,
	output [12:0]P
    );
wire [6:0]W0;
wire [6:0]W1;
wire [6:0]W2; 
wire [6:0]W3;
wire [6:0]W4;
wire [6:0]W5;
wire stage0_xor;
wire stage1_xor;
wire stage2_xor; 
wire stage3_xor;
wire stage4_xor;
wire stage5_xor0;
wire stage5_xor1;
wire stage5_xor2;
wire stage5_xor3;
wire stage5_xor4;
wire stage5_xor5;
wire [7:0]FA_W0;
wire [7:0]FA_W1;
wire [7:0]FA_W2;
wire [7:0]FA_W3;
wire [7:0]FA_W4;
wire final_carry;
wire adjust1;
wire adjust2;
wire acarry;
wire acarryout;
partial_mul stage0(.A(A), .b(B[0]), .P(W0));
assign P[0] = W0[0];
XOR stage0xor(.a(W0[6]), .b(t), .out(stage0_xor));
partial_mul stage1(.A(A), .b(B[1]), .P(W1));
XOR stage1xor(.a(W1[6]), .b(t), .out(stage1_xor));
Half_adder Adjust(.a(t), .b(W0[5]), .c_out(acarry), .sum(adjust1));
Full_adder Adjust2(.a(stage0_xor), .b(t), .c_in(acarry),.c_out(acarryout), .sum(adjust2));
FA_stage stage0FA(.out(FA_W0), .in1({stage1_xor, W1[5], W1[4], W1[3], W1[2], W1[1], W1[0]}),
						.in2({acarryout, adjust2, adjust1, W0[4], W0[3], W0[2], W0[1]}));
assign P[1] = FA_W0[0];
partial_mul stage2(.A(A), .b(B[2]), .P(W2));
XOR stage2xor(.a(W2[6]), .b(t), .out(stage2_xor));
FA_stage stage1FA(.out(FA_W1), .in1({stage2_xor, W2[5], W2[4], W2[3], W2[2], W2[1], W2[0]}),
						.in2({FA_W0[7], FA_W0[6], FA_W0[5], FA_W0[4], FA_W0[3], FA_W0[2], FA_W0[1]}));
assign P[2] = FA_W1[0];

partial_mul stage3(.A(A), .b(B[3]), .P(W3));
XOR stage3xor(.a(W3[6]), .b(t), .out(stage3_xor));
FA_stage stage2FA(.out(FA_W2), .in1({stage3_xor, W3[5], W3[4], W3[3], W3[2], W3[1], W3[0]}),
						.in2({FA_W1[7], FA_W1[6], FA_W1[5], FA_W1[4], FA_W1[3], FA_W1[2], FA_W1[1]}));
assign P[3] = FA_W2[0];

partial_mul stage4(.A(A), .b(B[4]), .P(W4));
XOR stage4xor(.a(W4[6]), .b(t), .out(stage4_xor));
FA_stage stage3FA(.out(FA_W3), .in1({stage4_xor, W4[5], W4[4], W4[3], W4[2], W4[1], W4[0]}),
						.in2({FA_W2[7], FA_W2[6], FA_W2[5], FA_W2[4], FA_W2[3], FA_W2[2], FA_W2[1]}));
assign P[4] = FA_W3[0];

partial_mul stage5(.A(A), .b(B[5]), .P(W5));
XOR stage5xor0(.a(W5[0]), .b(t), .out(stage5_xor0));
XOR stage5xor1(.a(W5[1]), .b(t), .out(stage5_xor1));
XOR stage5xor2(.a(W5[2]), .b(t), .out(stage5_xor2));
XOR stage5xor3(.a(W5[3]), .b(t), .out(stage5_xor3));
XOR stage5xor4(.a(W5[4]), .b(t), .out(stage5_xor4));
XOR stage5xor5(.a(W5[5]), .b(t), .out(stage5_xor5));

FA_stage stage4FA(.out(FA_W4), .in1({W5[6], stage5_xor5, stage5_xor4, stage5_xor3, stage5_xor2, stage5_xor1, stage5_xor0}),
						.in2({FA_W3[7], FA_W3[6], FA_W3[5], FA_W3[4], FA_W3[3], FA_W3[2], FA_W3[1]}));

assign P[5] = FA_W4[0];
assign P[6] = FA_W4[1];
assign P[7] = FA_W4[2];
assign P[8] = FA_W4[3];
assign P[9] = FA_W4[4];
assign P[10] = FA_W4[5];
assign P[11] = FA_W4[6];

Half_adder final_stage(.a(t), .b(FA_W4[7]), .sum(P[12]), .c_out(final_carry));

endmodule
