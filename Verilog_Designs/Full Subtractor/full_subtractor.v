`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2026 09:39:28 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input a,b,bin,
    output d,bo
    );
    wire w1,w2,w3;
    xor x1(w1,a,b);
    xor x2(d,w1,bin);
    and a1(w2,~a,b);
    and a2(w3,~w1,bin);
    or o1(bo,w2,w3);
    
endmodule
