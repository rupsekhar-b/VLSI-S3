`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 01:36:11 PM
// Design Name: 
// Module Name: demux2x1_tb
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


module demux2x1_tb();

reg s,in;
wire[1:0]y;
integer i;
demux1x2 uut(s,in,y);
initial begin

for(i=0;i<4;i=i+1)
    begin
    {s,in}=i;
    #10;
    end
    $finish;
end
endmodule
