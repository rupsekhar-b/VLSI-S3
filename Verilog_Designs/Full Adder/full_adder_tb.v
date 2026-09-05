`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2026 10:35:12 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
    reg atb,btb,ctb;
    wire SUM,CARRY;
    full_adder fa1(.a(atb),.b(btb),.cin(ctb),.sum(SUM),.carry(CARRY));
    initial begin
        atb=0;btb=0;ctb=0;
    #10 atb=0;btb=0;ctb=1;
    #10 atb=0;btb=1;ctb=0;
    #10 atb=0;btb=1;ctb=1;
    #10 atb=1;btb=0;ctb=0;
    #10 atb=1;btb=0;ctb=1;
    #10 atb=1;btb=1;ctb=0;
    #10 atb=1;btb=1;ctb=1;
    #10 $finish;
    end

endmodule
