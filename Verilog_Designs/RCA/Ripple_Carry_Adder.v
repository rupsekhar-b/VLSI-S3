`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2026 01:40:56 PM
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder(input [3:0]a,[3:0]b,input CIN, output [3:0]s,output cout);
wire w1,w2,w3;
full_adder fa1(a[0],b[0],CIN,s[0],w1);
full_adder fa2(a[1],b[1],w1,s[1],w2);
full_adder fa3(a[2],b[2],w2,s[2],w3);
full_adder fa4(a[3],b[3],w3,s[3],cout);
endmodule
