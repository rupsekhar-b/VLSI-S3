`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 10:59:21 AM
// Design Name: 
// Module Name: mux2x1_tb
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


module mux2x1_tb();

reg s; reg[1:0]i;
wire y;
integer m;

mux2x1 uut(s,i,y);
initial
    begin
        for (m=0;m<8;m=m+1)
            begin
                {s,i}=m;
                #10;
            end
        #10 $finish;
    end
endmodule
