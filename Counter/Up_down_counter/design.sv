// Code your design here
`timescale 1ns/1ps;
module up_down_counter(q,a,rst,clk);
  input rst,clk;
  output reg [3:0]q	;
  output reg [4:0] a;
  initial
    begin 
      q = 4'b0000;
      a = 5'd0;
    end
  
  always @(posedge clk)
    begin 
      if(rst)
        q<=0;
      
      else 
        begin
          a=a+1;
          if(a<=15)
            q<=q+1;
          else if (a>15 && a<=30)
            q<=q-1;
          else a=0;
        end
    end
endmodule 
  