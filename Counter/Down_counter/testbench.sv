// Code your testbench here
// or browse Examples
module stimulus;
  reg RST,CLK;
  wire [3:0]Q;
  
  down_counter count(Q,CLK,RST);
  
  initial 
    begin 
  		$dumpfile("dump.vcd");
  		$dumpvars(0,stimulus);
    end 
  
  initial
    begin
    	CLK = 0;
  		RST = 1;
    end 
  
  always #10 CLK =~CLK;
  
  initial 
    begin 
      $monitor ( $time, " Q=%b\n",Q);
      #10 RST = 0;
      #305 $finish;
    end 
endmodule 
  