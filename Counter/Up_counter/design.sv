// Code your design here
`timescale 1ns/1ps;
module up_counter(q,rst,clk);
  output reg [3:0]q;
  input rst,clk;
  
  initial 
    begin
       q = 4'b0000;
    end 
  
  always @(posedge clk)
    begin 
    if(rst)
      q <= 4'd0;
    else
      q<=q+1;
    end
endmodule 
  