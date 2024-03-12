`timescale 1ns/1ns

module testbench_top;
   reg clk, rst, start;
   reg [9:0] A, B;
   wire ov;
   wire [9:0] Q;
   wire busy , valid,dvz;
   div_top uut (clk,start,A, B, Q, busy, valid,ov,dvz);

   assign clk = 0;
   initial begin forever #5 clk = ~clk; end

   initial
   begin
      // Devide by zero :
   //    A = 10'b1101010000;
   //    B = 10'b0;
   //    rst = 1; start = 0; 
   //   #10 rst = 0; start = 1;#10 start=0; #380;
      // Main Tests: 
      A = 10'b1010110110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;


      $stop;
   end

endmodule
