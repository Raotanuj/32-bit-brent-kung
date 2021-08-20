module Dutwrapper (clk,A1,B1,Cin1,Sum1);

parameter N = 32;
input clk;
input [N-1:0] A1, B1;
input Cin1;

output reg [N:0] Sum1;


reg [N-1:0] A2, B2;
reg Cin2;

wire [N:0] Sum2;

RCA R1(A2,B2,Cin2,Sum2);

always @(posedge clk)
begin
A2<=A1;
B2<=B1;
Cin2<=Cin1;
end

always @(posedge clk)
begin
Sum1<=Sum2;
end


endmodule
