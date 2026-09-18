`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 10:25:35 AM
// Design Name: 
// Module Name: BCD_Beh_tb
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


module BCD_Beh_tb();

reg [3:0]atb,btb;
reg ctb;
wire [3:0]stb; wire cartb;

BCD_Adder_Behavioural dut(atb,btb,ctb,stb,cartb);

initial begin
ctb=0;
atb=4'b0110; btb=4'b0011;
#10 atb=4'b1000; btb=4'b0100;
#10 ctb=1;
atb=4'b1000;btb=4'b0110;
#10 atb=4'b0110; btb=4'b0010;
#10 $finish;

end
endmodule
