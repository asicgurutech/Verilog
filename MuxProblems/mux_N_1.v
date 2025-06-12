`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 00:11:25
// Design Name: 
// Module Name: Mux_N_1
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


module Mux_N_1 #(parameter N=4)(
input [N-1:0]I,
input [$clog2(N)-1:0]sel,
output reg y
    );
    
    always@(*)
    begin
     y = I[sel];
    end
    
endmodule
