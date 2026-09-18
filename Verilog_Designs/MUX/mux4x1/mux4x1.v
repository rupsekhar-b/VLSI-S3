`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 01:07:33 PM
// Design Name: 
// Module Name: mux4x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4x1(input [1:0]s, input [3:0]in, output reg y);
always@(*)
begin

case(s)
2'b00:y=in[0];
2'b01:y=in[1];
2'b10:y=in[2];
2'b11:y=in[3];
endcase
end

endmodule
