`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2026 09:27:41 PM
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb();

    reg atb,btb;
    wire diff, borrow;
    half_subtractor hs1(.a(atb),.b(btb),.d(diff),.bo(borrow));
    initial begin
        atb=0;btb=0;
    #10 atb=0;btb=1;
    #10 atb=1;btb=0;
    #10 atb=1;btb=1;
    #10 $finish;
    end

endmodule
