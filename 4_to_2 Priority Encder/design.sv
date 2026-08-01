// Code your design here
`timescale 1ns/1ps;
module encoder(out, v, in);
  input [3:0]in;
  output v;
  output reg [1:0]out;
  
  always @(*)
    casex(in)
      
      4'b1xxx: out = 2'b11;
      4'b01xx: out = 2'b10;
      4'b001x: out = 2'b01;
      4'b0001: out = 2'b00;
      
      default: $display("Unspecified signal");
      endcase
                        
                        
  assign v = in[0] | in[1] | in[2] | in[3];
      
      endmodule 
                        
                        