`timescale 1ns/1ns

module testbench_top;
   reg clk, rst, start, ld_a, ld_b;
   reg [9:0] A, B;
   wire ov;
   wire [9:0] Q, CO_CNT;

   fixed_point_division uut (clk, rst, start, ld_a, ld_b, A, B, Q, ov, CO_CNT);

   assign clk = 0;
   initial begin forever #5 clk = ~clk; end

   initial begin
      A = 10'b1001010010; B = 10'b0001100100;
      rst = 1; start = 0; ld_a = 1; ld_b = 1;
      #10 rst = 0; start = 1; ld_a = 1; ld_b = 1; #140; $display("%b Q=%b", CO_CNT, Q);
      $stop;
   end
endmodule
