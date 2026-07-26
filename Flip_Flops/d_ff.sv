// Code your design here
`timescale 1ns/1ps;
module dff(q,qbar,d,clk,rst);
  output reg q,qbar;
  input d,clk,rst;
  
  initial
    begin 
      q = 1'b0;
      qbar = 1'b1;
     end
  
 
  
  always @(posedge clk)
    if(rst)
      begin 
        q=1'b0;
        qbar=~q;
      end
  else
    begin 
      q=d;
      qbar=~q;
    end
endmodule 
  
  
  
      
