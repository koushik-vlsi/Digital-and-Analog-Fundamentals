// Code your testbench here
// or browse Examples
module stimulus;
  reg CLK;
  wire [3:0]Q;
  
  johnson_counter COUNT(Q,CLK);
  
  initial
     
    begin
     CLK = 1'b0;
 
      
      $monitor ($time,"Q = %b\n",Q);
     
      
      #100 $finish;
    end
  always #10 CLK=~CLK;
  
endmodule 
      
    