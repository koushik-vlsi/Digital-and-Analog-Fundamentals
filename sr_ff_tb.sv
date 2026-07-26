// Code your testbench here
// or browse Examples
module stimulus;
  reg  CLK,RST, S, R;
  wire Q,QBAR;
  
  dff flipflop(Q,QBAR,S, R,CLK,RST);
  
  initial CLK = 0;
  always #10 CLK = ~CLK;
  
  initial 
    begin 
      $monitor($time, " RST = %b, S = %b, R = %b, Q = %b, QBAR = %b\n",RST, S, R, Q, QBAR);
      
      #10 S = 0;R = 0; RST = 0;
      #20 S = 1;R = 0; RST = 0;
      #20 S = 0;R = 1; RST = 0;
      #20 S = 1;R = 0; RST = 1;
      #20 S = 0;R = 1; RST = 1;
      #20 S = 1;R = 1; RST = 1;
      #20 $finish; 
    end 
endmodule 