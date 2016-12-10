`timescale 1ns/1ps
module alu(input clk,rst,
           input [3:0] a,b,
           input [1:0] status,
           output reg [3:0] result);

          
always@(*)
begin
if (rst) begin
result<='b0000;
end
else begin
 case(status)
  2'b00:begin
     result=a+b;
   end
   2'b01:begin
     result=a-b;
   end
   2'b10: begin
     result=a<<1;
   end
   2'b11: begin
     result=b<<1;
   end
endcase
end
end
endmodule
    
      
  


            
           
