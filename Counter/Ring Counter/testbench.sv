// Code your testbench here
// or browse Examples
module stimulus;
  reg CLK;
  wire [3:0]Q;
  
  ring_counter COUNT(Q,CLK);
  
  initial 
    begin 
  $monitor($time, "Q = %b\n", Q);
  
  CLK = 1'b0;
  
  
  #100 $finish;
    end
  always #10 CLK = ~CLK;
  
  
endmodule 

  
  