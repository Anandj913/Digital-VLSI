`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:18:49 03/08/2020 
// Design Name: 
// Module Name:    mux_2cross1 
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
module mux_2cross1(
    input Input1,
    input Input2,
    input Select,
    output Output
    );
wire out1, out2;
assign out1 = Input1 & Select;
assign out2 = Input2 & (~Select);
assign Output = out1 | out2;
endmodule
