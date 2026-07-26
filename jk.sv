// Code your design here
`timescale 1ns/1ps;
module dff(q,qbar,j,k,clk,rst);
  output reg q,qbar;
  input j,k,clk,rst;
  
  initial
    begin 
      q = 1'b0;
      qbar = 1'b1;
     end
  
 
  
  always @(posedge clk)
    begin
    if(rst)
      begin 
        q=1'b0;
        qbar=~q;
      end
  else if(j==1 && k==0)
    begin 
      q=1'b1;
      qbar=~q;
    end
  else if(j==0 && k==1)
    begin 
      q=1'b0;
      qbar=~q;
    end
  else if(j==0 && k==0)
    begin 
      q=q;
      qbar=~q;
    end
  else if(j==1 && k==1)
    begin 
      q=~q;
      qbar=~q;
    end
    end
endmodule 