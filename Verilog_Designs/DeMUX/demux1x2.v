`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 01:31:43 PM
// Design Name: 
// Module Name: demux1x2
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


module demux1x2(input s,in,output reg [1:0]y);
always@(*)
begin

case(s)
0:  begin
    y[0]=in;
    y[1]=0;
    end
1:  begin
    y[0]=0;
    y[1]=in;
    end

endcase
end
endmodule
