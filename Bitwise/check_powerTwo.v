`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:44:08
// Design Name: 
// Module Name: power_two
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


module power_two #(parameter N=4)();
reg [N-1:0]I;
wire Q;

initial begin
I=4'b1010;
#30
I=4'b1000;
#30
I=4'b1111;
#30
I=4'b0100;
#500
$finish;
end

assign Q = (I & (I-1'b1))?0:1;

endmodule
