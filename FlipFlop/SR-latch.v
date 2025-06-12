`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 01:19:30
// Design Name: 
// Module Name: SR_latch
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


module SR_latch(
input enb,reset,S,R,
output reg Q,Qbar
    );
 always @(*)
 begin
 if(reset)
 begin
 Q<=0;
 Qbar<=1;
 end
 else
  begin
    if (enb)
    begin
      if(S && R)
        Q<=1'bx;
      else if(S == 1 && R == 0)
        Q<=1'b1;
      else if(S == 0 && R == 1)
        Q<=1'b0;
      else
        Q<=Q;
     Qbar<=~Q;
    end   
  end
 end
endmodule
