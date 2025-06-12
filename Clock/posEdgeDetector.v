`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 17:15:03
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(
input clk,reset,In,
output reg Q,
output out
    );

always @(posedge clk)
begin
 if(reset)begin
  Q<=1'b0;
   end
 else
  begin
    Q<=In;
  end
  end
  assign out=~Q&In;
 endmodule
