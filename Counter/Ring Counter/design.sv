// Code your design here
`timescale 1ns/1ps;
module ring_counter(q,clk);
  input clk;
  output reg [3:0]q = 4'd1;
  
  always @(posedge clk)
    
    case(q)
      
      4'd1: q = 4'd2;
      4'd2: q = 4'd4;
      4'd4: q = 4'd8;
      4'd8: q = 4'd1;
    endcase
endmodule 
      