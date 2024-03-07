`timescale 1ns/1ns
module Register_TB();
	reg         clock = 0;
	reg         rst = 0;
	reg         ldA = 1;
	reg  [9:0] value_in;
	wire [9:0] value_out;

	RegisterA CUT(clock, rst, ldA, value_in, value_out);
	always #20 clock = ~clock;
	initial begin
		repeat(10) #31 value_in = $random;
		#30 $stop;
	end
endmodule
