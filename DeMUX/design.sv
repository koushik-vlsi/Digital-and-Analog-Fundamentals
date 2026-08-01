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

      2'b0x, 2'bx1, 2'bxz, 2'bxx, 2'bzx, 2'b1x, 2'bx0:
        begin 
          out = 4'bxxxx;
        end
      2'b0z, 2'b1z, 2'bzz, 2'bz0, 2'bz1:
        begin
          out = 4'bzzzz;
        end
      
      default: $display("unspecified control");
      
    endcase
endmodule

      
    
  
