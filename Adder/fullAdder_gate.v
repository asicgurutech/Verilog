`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2025 08:46:15
// Design Name: 
// Module Name: Full_adder_gate
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


module Full_adder_gate(
input A,B,Cin,
output Sum,Cout
    );
 wire A1,A2,A3;
 xor(A1,A,B);
 xor(Sum,A1,Cin);
 and(A2,A,B);
 and(A3,A1,Cin);
 or(Cout,A2,A3);
 
endmodule
