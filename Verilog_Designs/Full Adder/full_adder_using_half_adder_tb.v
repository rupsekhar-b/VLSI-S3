`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2026 10:46:54 AM
// Design Name: 
// Module Name: fauha_tb
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


module fauha_tb();
    reg[2:0] i;
    wire SUM,CARRY;
    full_adder_using_half_adder fauha1(i[2],i[1],i[0],SUM,CARRY);
    initial begin
        i=3'b000;
    #10 i=3'b001;
    #10 i=3'b010;
    #10 i=3'b011;
    #10 i=3'b100;
    #10 i=3'b101;
    #10 i=3'b110;
    #10 i=3'b111;
    #10 $finish;
    end
endmodule
