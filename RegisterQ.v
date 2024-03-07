`timescale 1ns/1ns
module RegisterQ(clock, rst, ldgt, lds, A, data_in, data_out);

input            clock;
input            rst;
input            ldgt;
input            lds;
input      [9:0]  A;
input      [9:0] data_in;
output reg [9:0] data_out;

always @(posedge clock)
begin
    if(rst)
        data_out <= {A[8:0], 1'b0};
    else
	if(ldgt)
		data_out<= {data_in[8:0], 1'b1};
	else
		if(lds)
			data_out<= {data_in[8:0], 1'b0};
end

endmodule
