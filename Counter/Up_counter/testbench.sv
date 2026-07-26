// Code your testbench here
// or browse Examples
module stimulus;
  reg CLK,RST;
  wire [3:0]Q;
  
  up_counter up(Q,RST,CLK);
  
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
      
      $monitor ($time, " RST = %b, Q = %b\n", RST, Q);
      #10 RST = 1'b0;
      #305 $finish;
            
    end
endmodule 
      
      