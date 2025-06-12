`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 14:20:05
// Design Name: 
// Module Name: carry_lookahead
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


module carry_lookahead #(parameter N=4)(
input [N-1:0]A,B,
 output reg [N-1:0]res,
 output reg [N:0]C  );
 integer i;
 reg [N-1:0]G,P;
 
 always @(*)
 begin
 C[0]=1'b0;
 for(i=0;i<N;i=i+1) begin
  G[i]=A[i]&B[i];
  P[i]=A[i]^B[i]; end
  
 for(i=0;i<N;i=i+1)begin
  C[i+1] = G[i]|(P[i]&C[i]);
   res[i] = P[i]^C[i];
  //C[i+1] = G[i]|(P[i]&C[i]);
  //res[i] = P[i]^C[i];
  end
 //for(i=1;j<N;j=j+1) begin
  // C[i] = G[i-1]|(P[i-1]&C[i-1]);
   //end
  
end 
    
endmodule
