// Code your testbench here
// or browse Examples
module stimulus;
  reg [3:0]IN;
  wire V;
  wire [1:0] OUT;
  
  encoder ENCODER(OUT, V, IN);
  
  initial 
    begin 
      
      $monitor($time, "IN = %b, V = %b, OUT = %b\n", IN, V, OUT);
      
      #10 IN = 4'b1011;
      #10 IN = 4'b0011;
      #10 IN = 4'b0001;
      #10 IN = 4'b1011;
      #10 IN = 4'b0100;
      #10 IN = 4'b0000;
      
      #10 $finish;
      
    end
endmodule
      
      