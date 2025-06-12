// use Verilog generate blocks to implement multiple full adders (FAs)
module generate_adder #(parameter N=4)(
input [N-1:0]A,B,
input cin,
output [N-1:0]sum,
output [N:0]cout,
output carry_final);
genvar i;
generate
for(i=0;i<N;i=i+1)
begin:add
 if(i==0)
    adder ADD(.a(A[i]),.b(B[i]),.c(cin),.sum(sum[i]),.carry(cout[i+1]));
 else
   adder ADD(.a(A[i]),.b(B[i]),.c(cout[i]),.sum(sum[i]),.carry(cout[i+1]));
end
endgenerate

assign cout[0] = cin;
assign carry_final = cout[4];
endmodule
