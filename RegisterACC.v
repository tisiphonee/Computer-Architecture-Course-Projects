`timescale 1ns/1ns
module RegisterACC(clock, rst, ld, A, Q, data_in, sub_result, data_out);

input            clock;
input            rst;
input            ldQ;
input      [9:0]  A;
input      [9:0]  Q;
input      [10:0] data_in;
output reg [10:0] data_out;

always @(posedge clock)
begin
    if(rst)
        data_out <= {10'b0, A[9]};
    else
	if(ld)
		data_out<= {sub_result[9:0], Q[9]};
	else
		data_out<= {data_in[9:0], Q[9]};
end

endmodule
