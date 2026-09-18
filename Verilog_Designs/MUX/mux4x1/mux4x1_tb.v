`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 01:12:32 PM
// Design Name: 
// Module Name: mux4x1_tb
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


module mux4x1_tb();

reg [1:0]s; reg [3:0]in;
wire y;
integer i;

mux4x1 uut(s,in,y);

initial 
begin
    for (i=0;i<64;i=i+1)
        begin
        {s,in}=i;
        #3;
        end
    $finish;

end
endmodule
