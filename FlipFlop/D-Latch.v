module dlatch(
input en, d, 
output reg q
);
always @(*) begin
if(en)
 q = d;
end
endmodule
