`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2026 11:01:19 PM
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder(input [3:0]a_bcd,[3:0]b_bcd,input CIN,output [3:0]sum_bcd, output carry_bcd);

    wire [3:0]sum_temp;wire cout_temp;wire w1,w2,w3;wire [3:0]b_rca2;wire rca2_cout;
    
    Ripple_Carry_Adder rca1(a_bcd,b_bcd,CIN,sum_temp,cout_temp);
    
    and a1(w1,sum_temp[3],sum_temp[2]);
    and a2(w2,sum_temp[3],sum_temp[1]);
    or o1(w3,w1,w2,cout_temp);
    
    assign b_rca2[2]=w3;
    assign b_rca2[1]=w3;
    assign b_rca2[3]=0;
    assign b_rca2[0]=0;
    
    Ripple_Carry_Adder rca2(sum_temp,b_rca2,0,sum_bcd,rca2_cout); //for this rca cin=0 as we are not considering carry into this rca
    assign carry_bcd=w3;
    /*
    See the carry_bcd should get o/p from the or gate for correction not the second rca so to avoid
    double driving of carry_bcd and getting unknown x we use a temp rca2_cout wire to collect rca2 cout
    and directly assign the carry_bcd to w3 ie o/p of correction or gate!!!
    
    */
    
endmodule
