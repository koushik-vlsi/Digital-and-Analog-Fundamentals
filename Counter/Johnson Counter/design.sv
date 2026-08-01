// Code your design here
`timescale 1ns/1ps;
module johnson_counter(q,clk);
  input clk;
  output reg [3:0]q = 4'd0;
  
  always @(posedge clk)
    case(q)
      4'd0: q = 4'd8;
      4'd8: q = 4'd12;
      4'd12: q = 4'd15;
      4'd15: q = 4'd7;
      4'd7: q = 4'd3;
      4'd3: q = 4'd1;
      4'd1: q = 4'd0;
    endcase
endmodule 
      