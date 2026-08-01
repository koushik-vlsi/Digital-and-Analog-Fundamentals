// Code your testbench here
// or browse Examples
module stimulus;
  reg [1:0]S;
  reg IN;
  wire [3:0]OUT;
  
  demux UUT(OUT, IN, S);
  
  initial 
    begin 
      
      $monitor($time, "I = %b, S = %b, OUT = %b\n", IN, S, OUT);
      
       #10 IN = 1'b1; S = 2'b00; 
      #10 S = 2'b01;
      #10 S = 2'b10;
      #10 S = 2'b11;
      #10 S = 2'b1x;
      #10 S = 2'bz1;
      #10 S = 2'bzz;
      #10 S = 2'bxx;
      #10 S = 2'bxz;
      
      #10 $finish;
     
    end
endmodule 
