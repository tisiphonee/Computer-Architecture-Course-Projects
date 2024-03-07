`timescale 1ns/1ns
module scsubtractor(clock, ld, ACC, B, result);

input            clock;
input            ld;
input      [10:0]  ACC;
input      [9:0] B;
output reg [10:0] result;

always @(posedge clock)
begin
    if(ld)
	result <= ACC - {1'b0, B};
end

endmodule
