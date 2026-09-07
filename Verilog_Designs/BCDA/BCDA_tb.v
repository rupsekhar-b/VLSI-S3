`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2026 11:49:20 PM
// Design Name: 
// Module Name: BCDA_tb
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


module BCDA_tb();

reg [3:0]atb,btb;reg ctb;
wire [3:0]sumtb;wire carrytb;

BCD_adder bcd1(atb,btb,ctb,sumtb,carrytb);

initial begin
        ctb = 0;
        atb = 4'b0000; btb = 4'b0000;   
    #10 atb = 4'b0010; btb = 4'b0011;   
    #10 atb = 4'b0100; btb = 4'b0101;   
    #10 atb = 4'b0101; btb = 4'b0101;   
    #10 atb = 4'b0011; btb = 4'b0111;   
    #10 atb = 4'b0111; btb = 4'b1000;   
    #10 atb = 4'b1001; btb = 4'b1001;  
    
    #10 ctb = 1;
        atb = 4'b0100;btb = 4'b0101;                   
    #10 atb = 4'b1001;btb = 4'b1001;                   
    #10 $finish;
    end
endmodule
