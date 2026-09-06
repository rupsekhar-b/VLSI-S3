`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2026 01:53:04 PM
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
    reg [3:0]atb;reg [3:0]btb;reg ctb;
    wire [3:0]Sum;wire Carry;
    
    Ripple_Carry_Adder uut(atb,btb,ctb,Sum,Carry);
    initial begin
    ctb = 0;
        atb = 4'b0000; btb = 4'b0000;   
        #10 atb = 4'b0001; btb = 4'b0010;   
        #10 atb = 4'b1111; btb = 4'b0001; 
        #10 atb=4'b0001;btb=4'b0010;
        #10 atb=4'b0011;btb=4'b1001;
        #10 atb=4'b0101;btb=4'b0100;
        #10 atb=4'b1000;btb=4'b0111;  
        #10 atb = 4'b1111; btb = 4'b1111;   

    #10 ctb = 1;
        atb = 4'b0010; btb = 4'b0011;   
    #10 $finish;
    
    end

endmodule
