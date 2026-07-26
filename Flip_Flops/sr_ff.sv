// Code your design here
`timescale 1ns/1ps;
module dff(q,qbar,s,r,clk,rst);
  output reg q,qbar;
  input s,r,clk,rst;
  
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
  else if(s==1 && r==0)
    begin 
      q=1'b1;
      qbar=~q;
    end
  else if(s==0 && r==1)
    begin 
      q=1'b0;
      qbar=~q;
    end
  else if(s==0 && r==0)
    begin 
      q=q;
      qbar=~q;
    end
endmodule 