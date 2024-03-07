`timescale 1ns/1ns
module Q_TB();
	reg         clock = 0;
	reg         rst = 0;
	reg         ldgt = 0;
	reg         lds = 1;
	reg  [9:0]  A;
	reg  [9:0] value_in;
	wire [9:0] value_out;

	RegisterQ CUT(clock, rst, ldgt, lds, A, value_in, value_out);
	always #20 clock = ~clock;
	initial begin
		repeat(10) #31 begin value_in = $random; A = $random; end
		#30 $stop;
	end
endmodule