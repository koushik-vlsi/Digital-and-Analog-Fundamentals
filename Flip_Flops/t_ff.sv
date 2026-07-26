// Code your design here
`timescale 1ns/1ps;
module tff(q,qbar,t,clk,rst);
  output reg q,qbar;
  input t,clk,rst;
  
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
  
    else if(t)
     begin 
      q=~q;
      qbar=~q;
    end
  
    else if(t==0)
     begin 
      q=q;
      qbar = qbar;
    end 
  
endmodule 
  