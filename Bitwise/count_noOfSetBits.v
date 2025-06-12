`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 16:14:02
// Design Name: 
// Module Name: no_of_setbits
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


module no_of_setbits #(parameter N=4)();
reg [N-1:0]I;
integer result;
 function integer num;
 input [N-1:0]a;
  begin
   if (a==0)
     num = 0;
   else 
     num = 1 + num(a & (a-1));
  end
   endfunction
   
 initial begin
  I = 4'b1100;
   result = num(I);
  #30
  I = 4'b1110;
   result = num(I);
  #30
  I = 4'b0001;
   result = num(I);
  #30
  I = 4'b0000;
   result = num(I);
  #30
  $finish;
 // result = num(I);
  end
 
      
endmodule
