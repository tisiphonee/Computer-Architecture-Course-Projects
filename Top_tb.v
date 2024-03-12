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
      A = 10'b1101010000;
      B = 10'b0;
      rst = 1; start = 0; 
     #10 rst = 0; start = 1;#10 start=0; #380;
      // Main Tests: 
      A = 10'b0010111111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001101000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011110001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010111111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000111001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100100001;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110100000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111100000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010010101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100010000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111101111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110001001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010000000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001000101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110001001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010001010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011111011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001000001;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101110111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001100011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001001111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101010100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111111111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011000101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011010011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111011001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111001110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010111111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111111010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101110010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001000101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010110111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001000100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100011011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101110001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001110010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110000010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110110011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101111100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110100001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001001101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101011101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111111011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110101011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011011010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101100101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110001100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001001100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101010111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001111011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100111100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001100100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010111000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101110001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010001011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001111111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101011101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010111001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010110000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011010001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000111000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101100111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100111111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010110110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100110110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001010100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011011111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011000101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001110111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011000001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100010010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100101011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101111101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110110111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011010110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010100010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110011001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000010100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001111101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001001001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111001011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000011000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101000110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000111011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110011011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001010010;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110001100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100011010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001111100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100011111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011110011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100110111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110101111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101000111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000111100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110001101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101001000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100000000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101101010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000101000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;




      $stop;
   end

endmodule
