`timescale 1ns/1ns
module ACC_TB();
	reg         clock = 0;
	reg         rst = 1;
	reg         ldQ = 0;
	reg  [9:0]  A;
	reg  [9:0]  Q;
	reg  [10:0] value_in;
	wire [10:0] value_out;

	RegisterACC CUT(clock, rst, ldQ, A, Q, value_in, value_out);
	always #20 clock = ~clock;
	initial begin
		repeat(10) #31 begin value_in = $random; A = $random; Q = $random; end
		#30 $stop;
	end
endmodule
