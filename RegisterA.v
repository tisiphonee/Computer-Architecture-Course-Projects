`timescale 1ns/1ns
module RegisterA(clock, rst, ldA, data_in, data_out);

input            clock;
input            rst;
input            ldA;
input      [9:0] data_in;
output reg [9:0] data_out;

always @(posedge clock)
begin
    if(rst)
        data_out <= 10'b0;
    else
	if(ldA)
		data_out<= data_in;
end

endmodule
