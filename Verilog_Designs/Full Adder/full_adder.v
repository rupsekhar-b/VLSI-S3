`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2026 07:03:02 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a,b,cin, output sum,carry);
    wire w1,w2,w3;
    xor x1(w1,a,b);
    and a1(w2,a,b);
    xor x2(sum,w1,cin);
    and a2(w3,w1,cin);
    or o1(carry,w2,w3);
    
endmodule
