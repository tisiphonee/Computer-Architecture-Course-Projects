`timescale 1ns/1ns
module Register(clock, rst, ld, data_in, data_out);

input            clock;
input            rst;
input            ld;
input      [9:0] data_in;
output  reg [9:0] data_out;

always @(posedge clock)
begin
	if(ld)
		data_out<= data_in;
end

endmodule
