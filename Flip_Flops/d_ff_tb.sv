// Code your testbench here
// or browse Examples
module stimulus;
  reg  CLK,RST, D;
  wire Q,QBAR;
  
  dff flipflop(Q,QBAR,D,CLK,RST);
  
  initial CLK = 0;
  always #10 CLK = ~CLK;
  
  initial 
    begin 
      $monitor($time, " RST = %B, D = %b, Q = %b, QBAR = %b\n",RST, D, Q, QBAR);
      
      #10 D = 1; RST = 0;
      #20 D= 0; RST = 0;
      #20 D = 1; RST = 1;
      #20 D=0; RST = 1;
      #20 $finish; 
    end 
endmodule 
