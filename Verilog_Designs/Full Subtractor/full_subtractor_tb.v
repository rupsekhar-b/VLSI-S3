`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2026 09:46:40 PM
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();

reg[2:0] i;
wire diff, borrow;
full_subtractor fs1(.a(i[2]),.b(i[1]),.bin(i[0]),.d(diff),.bo(borrow));
initial begin
    i=3'b000;
#10 i=3'b001;
#10 i=3'b010;
#10 i=3'b011;
#10 i=3'b100;
#10 i=3'b101;
#10 i=3'b110;
#10 i=3'b111;
#10 $finish;
end

endmodule
