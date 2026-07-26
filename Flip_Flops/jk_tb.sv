// Code your testbench here
// or browse Examples
module stimulus;
  reg  CLK,RST, J, K;
  wire Q,QBAR;
  
  dff flipflop(Q,QBAR,J, K,CLK,RST);
  
  initial CLK = 0;
  always #10 CLK = ~CLK;
  
  initial 
    begin 
      $monitor($time, " RST = %b, J = %b, K = %b, Q = %b, QBAR = %b\n",RST, J, K, Q, QBAR);
      
      #10 J = 0;K = 0; RST = 0;
      #20 J = 1;K = 0; RST = 0;
      #20 J = 0;K = 1; RST = 0;
      #20 J = 1;K = 1; RST = 0;
      #20 J = 1;K = 0; RST = 1;
      #20 J = 0;K = 1; RST = 1;
      #20 J = 1;K = 1; RST = 1;
      #20 $finish; 
    end 
endmodule 