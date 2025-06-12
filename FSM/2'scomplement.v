`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 19:14:41
// Design Name: 
// Module Name: 2scomplement
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


module scomplement(
  input clk,reset,seqin,
  output out );
  parameter S0=1'b0,S1=1'b1;
  reg present,next;
  
 always @(posedge clk)
 begin
   if(reset)
    present<=S0;
   else
    present<=next;
 end
    
always @(present or seqin)
begin
  case(present)
  S0: begin if(seqin)begin
        next<=S1;
         end
        else begin
        next<=S0;
        end
     end
  S1: begin next<=S1;
  
  end
  default: next<=S0;
  endcase
 end
 
 assign out= ((present==S0 && seqin==1 )|| (present==S1 && seqin==0))?1:0;
endmodule
