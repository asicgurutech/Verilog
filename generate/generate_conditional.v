//	Use Verilog generate blocks to implement an array of AND and OR gates.
module generate_conditional #(parameter type = "and1",N=4)(
input [N-1:0]a,b,
output [N-1:0]c
    );
    genvar i;
generate 
 if(type == "and1")
 for(i=0;i<N;i=i+1)
 begin:andlogic
    assign c[i]=a[i]&b[i];
    end
 else
 for(i=0;i<N;i=i+1)
 begin:orlogic
   assign c[i]=a[i]|b[i];
   end
endgenerate
endmodule
