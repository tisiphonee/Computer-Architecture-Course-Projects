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
   wire [9:0] Q;
   wire CO_CNT,gT,dvz;
   reg loading_done;
   fixed_point_division  uut(clk, rst,loading_done, start, ld_a, ld_b, A, B, Q, ov,gT,dvz,CO_CNT);
   assign clk = 0;
   initial
   begin
      forever #5 clk = ~clk;
   end
   
   initial
   begin
      A = 10'b0001101110;
      B = 10'b0000000011;
      loading_done=0;
      rst = 1; start = 0; ld_a = 1; ld_b = 1;
      #3 loading_done=1;
      #10 rst = 0; start = 0; #140; $display("%bQ=%b", CO_CNT, Q);
      $stop;
   end

endmodule
