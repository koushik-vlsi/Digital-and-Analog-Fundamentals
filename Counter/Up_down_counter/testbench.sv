// Code your testbench here
// or browse Examples
module stimulus;
  reg CLK,RST;
  wire [3:0]Q;
  wire [4:0] A;
  
  up_down_counter count(Q,A,RST,CLK);
  
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars(0,stimulus);
    end
  
  initial 
    begin 
      CLK = 1'b0;
      RST = 1'b1;
    end
  
  always #10 CLK = ~CLK;
  
  initial 
    begin 
      
      $monitor($time, " A =%d, Q= %d\n",A, Q);
      
      #10 RST = 0;
      
      #650 $finish;
      
    end 
endmodule 
