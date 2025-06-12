`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 11:58:21
// Design Name: 
// Module Name: clk_div
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


module clk_div();
reg clk;
reg div_by_2;
reg div_by_3;
reg [1:0]count;
initial begin

clk=1'b0;
div_by_2 =0;
div_by_3 =0;
count=0;
end
always #100 clk=~clk; //generating clock of 5MHZ frequency
always @(posedge clk )

begin
  div_by_2 <=~div_by_2; //frequency divided by 2
  end
always @(posedge clk or negedge clk)
begin

  if(count==2)begin
  div_by_3 <=~div_by_3; //frequency divided by 3
  count<=1'b0;
  end
  else
  count<=count+1;
  
  end



endmodule
