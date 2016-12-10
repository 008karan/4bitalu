
module alu_tb();
reg clk,rst;
reg [3:0] a,b;
reg [1:0] status;
wire [3:0] result;
alu u (     clk,rst,
             a,b,
            status,
             result);
initial begin
clk = 1'b0;
forever #1 clk = ~clk;
end
initial begin
$monitor("time=%g clk=%b rst=%b a=%b b=%b status=%b result=%b",
            $time,clk,rst,a,b,status,result);

rst=1'b1;
#2;
rst=1'b0;
#1;
                                                                                                                                                                                                            
a=4'b0100;
b=4'b0011;
#5 status=2'b00;
#5 status=2'b01;
#5 status=2'b10;
#5 status=2'b11;
#5;
                                                                                                                                                                                                            
a=4'b0010;
b=4'b0101;
status=2'b00;
#5 status=2'b01;
#5 status=2'b10;
#5 status=2'b11;
#5;
a=4'b1000;
b=4'b0111;
 status=2'b00;
#5 status=2'b01;
#5 status=2'b10;
#5 status=2'b11;
#5;
a=4'b1111;
b=4'b1001;
status=2'b00;
#5 status=2'b01;
#5 status=2'b10;
#5 status=2'b11;
#5;

#100 $finish;
end 
endmodule

              
              
               







             
            
            
            
            


     
            

 
