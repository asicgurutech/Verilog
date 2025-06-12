//Verilog code to generate the Fibonacci sequence.
module fibonacci #(parameter n=8)();
  reg [3:0] i;
  reg [3:0]a[n-1:0];
  always @(*)
  begin
    $write("fibonacci series of %d terms are %d %d ",n ,a[0],a[1]);
    for(i=2;i<n;i=i+1)
    begin
      a[i] = a[i-1]+a[i-2];
      $write("%d",a[i]);
    end
  end   
  initial begin
    a[0]=0;a[1]=1;
  end  
endmodule
