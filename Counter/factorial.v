module factorialno#(parameter N=8)();
  reg [N-1:0]n;
  integer factorial; 
  function automatic integer fact(
    input [N-1:0]a);
    begin
      if(a==0 || a==1)
        fact=1;
      else
        fact = a*fact(a-1);
    end 
  endfunction
  initial begin
    n=8'd4;
    factorial=fact(n);
    //factorial=fact(n-1);
    #30
    n=8'd5;
    factorial=fact(n);
    #30
    n=8'd9;
    factorial=fact(n);
    #500
    $finish;
  end
endmodule
