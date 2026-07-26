// Code your design here
`timescale 1ns/1ps;
module down_counter(q,clk,rst);
  input clk, rst;
  output reg [3:0]q;
  
  initial 
    begin 
      q = 4'b1111;
    end
  
  always @(posedge clk)
    begin
    if(rst)
      q<=4'b1111;
  	else 
      q<=q-1;
  end
endmodule 
      