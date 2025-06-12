`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 18:27:13
// Design Name: 
// Module Name: negedge_detect
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


module negedge_detect(
input clk,reset,I,
output reg Q,
output out );

always @(posedge clk)
begin
 if(reset)
  Q<=0;
 else
  Q<=I;
end
 
assign out = Q&~I;
endmodule
