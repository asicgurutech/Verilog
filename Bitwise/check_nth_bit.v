
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2025 22:18:29
// Design Name: 
// Module Name: set_bits
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

//to check nth bit is set or not in verilog
module check_nth_bits #(parameter N=8,n=6) (); //N is the total no. of bits, n is the bit which we have to check
reg [N-1:0]in;
wire Q;
initial begin
in = 8'b10110010;
#30
in = 8'b10010010;
#30
in = 8'b01101010;
#30
in = 8'b00010101;
#500
$finish;
end
 assign Q = ((in & (8'h01<<(n-1))?1:0));
endmodule
