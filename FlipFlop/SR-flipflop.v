`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 12:26:29
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(
  input clk,reset,S,R,
  output reg Q,Qbar
);
always @(posedge clk)
begin
   if (reset)begin
     Q<=0;
     Qbar<=1;
      end
   else begin
       if (S)
       Q<=1;
       else if(R)
       Q<=0;
       else if(S && R)
       Q<=1'bx;
       else Q<=Q;
 Qbar<=Q;
 end
 end
   
endmodule
