`timescale 1ns/1ns
module RegisterB(clock, rst, ldB, data_in, data_out);

input            clock;
input            rst;
input            ldB;
input      [9:0] data_in;
output reg [9:0] data_out;

always @(posedge clock)
begin
    if(rst)
        data_out <= 10'b0;
    else
	if(ldB)
		data_out<= data_in;
end

endmodule
