// Code your testbench here
// or browse Examples
module stimulus;
  reg  CLK,RST, T;
  wire Q,QBAR;
  
  tff flipflop(Q,QBAR,T,CLK,RST);
  
  initial CLK = 0;
  always #10 CLK = ~CLK;
  
  initial 
    begin 
      $monitor($time, " RST = %B, T = %b, Q = %b, QBAR = %b\n",RST, T, Q, QBAR);
      
      #10 T = 1; RST = 0;
      #20 T = 0; RST = 0;
      #20 T = 1; RST = 1;
      #20 T = 0; RST = 1;
      #20 $finish; 
    end 
endmodule 