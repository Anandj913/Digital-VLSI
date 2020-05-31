`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:28 04/27/2020 
// Design Name: 
// Module Name:    Full_adder 
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
module Full_adder(
    input a,
    input b,
    input c_in,
    output c_out,
    output sum
    );
	assign sum = a^b^c_in;
	assign c_out = (a&b)|(a&c_in)|(b&c_in);

endmodule
