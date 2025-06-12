`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2025 22:01:29
// Design Name: 
// Module Name: mux_ternary
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

//to implement 4:1 mux using ternary operator
module mux_ternary(
input [3:0]I,
input [1:0]sel,
output y
    );
    
assign y = (sel[1])?(sel[0]?I[3]:I[2]):(sel[0]?I[1]:I[0]);
endmodule
