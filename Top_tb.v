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
      A = 10'b0010101111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1100011010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001011100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110101010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100110101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1000110011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111101101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010111000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000111101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111011100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000010000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010100111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101111000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111011100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010000001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111001010;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001000100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010100100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110010011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001011011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110101011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111101101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000100101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110110111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101010011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101000011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101111000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101110001;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1011010110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001010110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010110100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110110100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0110111000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100100010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111110100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010111110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110100010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001100011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111010110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111101101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110101000;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1000011100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110010000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010100010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111000100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111110000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1100010011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001110000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010101010;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101010111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010000101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100100000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010001110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1000001111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010011010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110000010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010000100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101100010;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1011110011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010110010;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010011000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111010001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010000100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111111000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010110010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100101111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010010011;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001011010;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1111010111;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011001110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101101111;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111111011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1011101100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110100101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101111010;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1110000110;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101101001;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0010000101;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101100100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010010110;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1010001100;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011110101;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001011001;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001100011;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111011110;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001100000;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101010001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1101000100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1001010100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1000111000;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111011100;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1100000101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0100111111;
      B = 10'b0000001000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011111100;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b1011000110;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0111100110;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0001110001;
      B = 10'b0000010000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0101100101;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0011111011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;

      A = 10'b0000010011;
      B = 10'b0000011000;
      rst = 1; start = 0;
      #10 rst = 0; start = 1;#10 start=0; #380;
      $stop;
   end

endmodule
