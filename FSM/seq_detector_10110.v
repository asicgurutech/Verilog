`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 12:40:31
// Design Name: 
// Module Name: FSM
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


module FSM(input clk,rst,seq_in,
           output det_out);
     parameter IDLE = 4'b000,
               S0 = 4'b001,
               S1 = 4'b010,
               S2 = 4'b011,
               S3 = 4'b100,
               S4 = 4'b101;
           
 reg [2:0] present,next;
 
 //state transition logic
 always @ (posedge clk)
      begin
        if (rst)
          present<=IDLE;
        else
          present<=next;
      end
      
//next state logic
always @(present,seq_in)
 begin
   next=IDLE; //Default if none of the cases matches
   case (present)
     IDLE: begin if(seq_in) next = S0; 
                 else next =IDLE;end
     S0 : begin if(~seq_in) next = S1;
                else next = S0; end
     S1 : begin if(seq_in) next = S2;
                else next =IDLE; end
     S2 : begin if(seq_in) next = S3;
                else next = S0;end
     S3 : begin if(~seq_in) next = S4; 
                else next =S0;end
     S4 : begin if(seq_in) next = S0; 
                else next = IDLE;end
                
   endcase
 end
     
  //output logic
  assign det_out = (present == S4)? 1:0;
     
endmodule
