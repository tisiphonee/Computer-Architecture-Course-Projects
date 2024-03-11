`timescale 1ns/1ns

module testbench;

   reg clk;
   reg rst;
   reg start;
   reg ld_a;
   reg ld_b;
   reg [9:0] A;
   reg [9:0] B;
   wire ov;

   fixed_point_division  uut(clk, rst, start, ld_a, ld_b, A, B, q, ov);
   assign clk = 0;
   initial
   begin
      forever #5 clk = ~clk;
   end

   initial
   begin
      A = 10'b0000100000;  
      B = 10'b0000010000; 
      rst = 1;
      start = 0;
      ld_a = 1;
      ld_b = 1;

      #10 rst = 0;
      start = 0;
      #70;

      //#$display("time=%0t, A=%b, B=%b, q=%b, ov=%b", $time, A, B, q, ov);
      //#100;
      //$display("time=%0t, A=%b, B=%b, q=%b, ov=%b", $time, A, B, q, ov);
      $stop;
   end

endmodule
