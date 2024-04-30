
module PC(input [31:0] in, input clk , rst , output reg [31:0]out);
	
    always @(posedge clk) begin
	if(rst)
		out= 32'b000000000000000000000000000000;
	else
            out = in;
    end
	
endmodule

