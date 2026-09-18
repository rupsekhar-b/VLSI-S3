`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2026 11:21:58 PM
// Design Name: 
// Module Name: BCD_Adder_Behavioural
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


module BCD_Adder_Behavioural(input [3:0] abcd,bbcd,input cin, output reg[3:0]sumbcd, output reg carrybcd);
    reg [4:0]temp;
        always@(*)
        begin
        temp=abcd+bbcd+cin;
        if (temp>9)
            temp=temp+4'b0110;
        else
            temp=temp;
            
        sumbcd=temp[3:0];
        carrybcd=temp[4];
        end
endmodule
