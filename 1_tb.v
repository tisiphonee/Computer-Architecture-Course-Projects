module testbench;

   reg clk;
   reg rst;
   reg [9:0] A;
   reg [9:0] B;
   wire [9:0] q;
   wire ov;

   fixed_point_division  uut(clk,rst,A,B,q,ov);
   clk = 0;
   initial
   begin
      forever #5 clk = ~clk;
   end

   initial
   begin
      A = 10'b0000100000;  
      B = 10'b0000010000; 
      rst = 1;

      #10 rst = 0;
      #20;

      $display("time=%0t, A=%b, B=%b, q=%b, ov=%b", $time, A, B, q, ov);
      #100;
      $display("time=%0t, A=%b, B=%b, q=%b, ov=%b", $time, A, B, q, ov);
      $stop;
   end

endmodule
