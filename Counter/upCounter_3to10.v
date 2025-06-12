`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 00:24:40
// Design Name: 
// Module Name: Counter
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

// to design a up counter that counts from 3-10 sequence
module Counter( input clk ,rst, load,
                input [3:0] data,
                output reg [3:0]count);

always @(posedge clk)//counter with synchronous reset
 begin
  if(rst)
    count<=4'b0011;
  else if(load) //data loading will take place
    count<=data;
  else if(count==4'b1010)//counter returns to initial state
    count<=4'b0011;
  else
    count<=count+1'b1;
  end
endmodule
