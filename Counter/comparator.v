//implement an N-bit comparator using Verilog
module comparator #(parameter N=4)(
             input [N-1:0]a,b,
             output reg is_greater,is_small,is_equal);
             always @(*)
             begin
             is_greater=0;
             is_small=0;
             is_equal=0;
             if(a>b) begin
             is_greater=1; end
            else if(a<b)begin
            is_small=1; end
           else begin
           is_equal=1; 
             end
            end
           endmodule
