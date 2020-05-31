`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:52:28 03/08/2020 
// Design Name: 
// Module Name:    mux_8_chain 
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
module mux_8_chain( input [31:0] in0, input [31:0] in1, output [31:0] out, input Select );
mux_2cross1 stage00(.Input1(in1[0]), .Input2(in0[0]), .Output(out[0]), .Select(Select));
mux_2cross1 stage01(.Input1(in1[1]), .Input2(in0[1]), .Output(out[1]), .Select(Select));
mux_2cross1 stage02(.Input1(in1[2]), .Input2(in0[2]), .Output(out[2]), .Select(Select));
mux_2cross1 stage03(.Input1(in1[3]), .Input2(in0[3]), .Output(out[3]), .Select(Select));
mux_2cross1 stage04(.Input1(in1[4]), .Input2(in0[4]), .Output(out[4]), .Select(Select));
mux_2cross1 stage05(.Input1(in1[5]), .Input2(in0[5]), .Output(out[5]), .Select(Select));
mux_2cross1 stage06(.Input1(in1[6]), .Input2(in0[6]), .Output(out[6]), .Select(Select));
mux_2cross1 stage07(.Input1(in1[7]), .Input2(in0[7]), .Output(out[7]), .Select(Select));
mux_2cross1 stage08(.Input1(in1[8]), .Input2(in0[8]), .Output(out[8]), .Select(Select));

mux_2cross1 stage09(.Input1(in1[9]), .Input2(in0[9]), .Output(out[9]), .Select(Select));
mux_2cross1 stage010(.Input1(in1[10]), .Input2(in0[10]), .Output(out[10]), .Select(Select));
mux_2cross1 stage011(.Input1(in1[11]), .Input2(in0[11]), .Output(out[11]), .Select(Select));
mux_2cross1 stage012(.Input1(in1[12]), .Input2(in0[12]), .Output(out[12]), .Select(Select));
mux_2cross1 stage013(.Input1(in1[13]), .Input2(in0[13]), .Output(out[13]), .Select(Select));
mux_2cross1 stage014(.Input1(in1[14]), .Input2(in0[14]), .Output(out[14]), .Select(Select));
mux_2cross1 stage015(.Input1(in1[15]), .Input2(in0[15]), .Output(out[15]), .Select(Select));
mux_2cross1 stage016(.Input1(in1[16]), .Input2(in0[16]), .Output(out[16]), .Select(Select));
mux_2cross1 stage017(.Input1(in1[17]), .Input2(in0[17]), .Output(out[17]), .Select(Select));

mux_2cross1 stage018(.Input1(in1[18]), .Input2(in0[18]), .Output(out[18]), .Select(Select));
mux_2cross1 stage019(.Input1(in1[19]), .Input2(in0[19]), .Output(out[19]), .Select(Select));
mux_2cross1 stage020(.Input1(in1[20]), .Input2(in0[20]), .Output(out[20]), .Select(Select));
mux_2cross1 stage021(.Input1(in1[21]), .Input2(in0[21]), .Output(out[21]), .Select(Select));
mux_2cross1 stage022(.Input1(in1[22]), .Input2(in0[22]), .Output(out[22]), .Select(Select));
mux_2cross1 stage023(.Input1(in1[23]), .Input2(in0[23]), .Output(out[23]), .Select(Select));
mux_2cross1 stage024(.Input1(in1[24]), .Input2(in0[24]), .Output(out[24]), .Select(Select));
mux_2cross1 stage025(.Input1(in1[25]), .Input2(in0[25]), .Output(out[25]), .Select(Select));
mux_2cross1 stage026(.Input1(in1[26]), .Input2(in0[26]), .Output(out[26]), .Select(Select));

mux_2cross1 stage027(.Input1(in1[27]), .Input2(in0[27]), .Output(out[27]), .Select(Select));
mux_2cross1 stage028(.Input1(in1[28]), .Input2(in0[28]), .Output(out[28]), .Select(Select));
mux_2cross1 stage029(.Input1(in1[29]), .Input2(in0[29]), .Output(out[29]), .Select(Select));
mux_2cross1 stage030(.Input1(in1[30]), .Input2(in0[30]), .Output(out[30]), .Select(Select));
mux_2cross1 stage031(.Input1(in1[31]), .Input2(in0[31]), .Output(out[31]), .Select(Select));

endmodule
