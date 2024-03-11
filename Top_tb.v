`timescale 1ns/1ns

module testbench_top;
   reg clk, rst, start;
   reg [9:0] A, B;
   wire ov;
   wire [9:0] Q;
    reg loading_done;
    wire busy , valid;
   div_top uut (clk,start,A, B, Q, busy, valid,ov);

   assign clk = 0;
   initial begin forever #5 clk = ~clk; end

   initial
   begin
      A = 10'b1001010010;
      B = 10'b0001100100;
      loading_done=0;
      rst = 1; start = 0; 
      #3 loading_done=1;
      #10 rst = 0; start = 1; #140; $display("%bQ=%b", valid, Q);
      $stop;
   end

endmodule
