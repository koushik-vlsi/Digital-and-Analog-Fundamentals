// Code your design here
`timescale 1ns/1ps;
module demux(out,in,s);
  input in;
  output reg [3:0]out;
  
  input [1:0]s;
  always @(*)
    case(s)
      2'b00: out = {3'bzzz,in};
      2'b01: out = {2'bzz,in,1'bz};
      2'b10: out = {1'bz,in,2'bzz};
      2'b11:  out ={in,3'bzzz};
      default: out = 4'bzzzz;
      
    endcase
endmodule

      
    
  