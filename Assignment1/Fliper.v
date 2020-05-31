`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:57 03/08/2020 
// Design Name: 
// Module Name:    Fliper 
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
module Fliper( input [31:0]a, input Select, output [31:0]b
    );
mux_2cross1 stage00(.Input1(a[31]), .Input2(a[0]), .Output(b[0]), .Select(Select));
mux_2cross1 stage01(.Input1(a[30]), .Input2(a[1]), .Output(b[1]), .Select(Select));
mux_2cross1 stage02(.Input1(a[29]), .Input2(a[2]), .Output(b[2]), .Select(Select));
mux_2cross1 stage03(.Input1(a[28]), .Input2(a[3]), .Output(b[3]), .Select(Select));
mux_2cross1 stage04(.Input1(a[27]), .Input2(a[4]), .Output(b[4]), .Select(Select));
mux_2cross1 stage05(.Input1(a[26]), .Input2(a[5]), .Output(b[5]), .Select(Select));
mux_2cross1 stage06(.Input1(a[25]), .Input2(a[6]), .Output(b[6]), .Select(Select));
mux_2cross1 stage07(.Input1(a[24]), .Input2(a[7]), .Output(b[7]), .Select(Select));

mux_2cross1 stage08(.Input1(a[23]), .Input2(a[8]), .Output(b[8]), .Select(Select));
mux_2cross1 stage09(.Input1(a[22]), .Input2(a[9]), .Output(b[9]), .Select(Select));
mux_2cross1 stage10(.Input1(a[21]), .Input2(a[10]), .Output(b[10]), .Select(Select));
mux_2cross1 stage11(.Input1(a[20]), .Input2(a[11]), .Output(b[11]), .Select(Select));
mux_2cross1 stage12(.Input1(a[19]), .Input2(a[12]), .Output(b[12]), .Select(Select));
mux_2cross1 stage13(.Input1(a[18]), .Input2(a[13]), .Output(b[13]), .Select(Select));
mux_2cross1 stage14(.Input1(a[17]), .Input2(a[14]), .Output(b[14]), .Select(Select));
mux_2cross1 stage15(.Input1(a[16]), .Input2(a[15]), .Output(b[15]), .Select(Select));

mux_2cross1 stage16(.Input1(a[15]), .Input2(a[16]), .Output(b[16]), .Select(Select));
mux_2cross1 stage17(.Input1(a[14]), .Input2(a[17]), .Output(b[17]), .Select(Select));
mux_2cross1 stage18(.Input1(a[13]), .Input2(a[18]), .Output(b[18]), .Select(Select));
mux_2cross1 stage19(.Input1(a[12]), .Input2(a[19]), .Output(b[19]), .Select(Select));
mux_2cross1 stage20(.Input1(a[11]), .Input2(a[20]), .Output(b[20]), .Select(Select));
mux_2cross1 stage21(.Input1(a[10]), .Input2(a[21]), .Output(b[21]), .Select(Select));
mux_2cross1 stage22(.Input1(a[9]), .Input2(a[22]), .Output(b[22]), .Select(Select));
mux_2cross1 stage23(.Input1(a[8]), .Input2(a[23]), .Output(b[23]), .Select(Select));

mux_2cross1 stage24(.Input1(a[7]), .Input2(a[24]), .Output(b[24]), .Select(Select));
mux_2cross1 stage25(.Input1(a[6]), .Input2(a[25]), .Output(b[25]), .Select(Select));
mux_2cross1 stage26(.Input1(a[5]), .Input2(a[26]), .Output(b[26]), .Select(Select));
mux_2cross1 stage27(.Input1(a[4]), .Input2(a[27]), .Output(b[27]), .Select(Select));
mux_2cross1 stage28(.Input1(a[3]), .Input2(a[28]), .Output(b[28]), .Select(Select));
mux_2cross1 stage29(.Input1(a[2]), .Input2(a[29]), .Output(b[29]), .Select(Select));
mux_2cross1 stage30(.Input1(a[1]), .Input2(a[30]), .Output(b[30]), .Select(Select));
mux_2cross1 stage31(.Input1(a[0]), .Input2(a[31]), .Output(b[31]), .Select(Select));

endmodule
