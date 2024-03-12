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
   A = 10'b1010110110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0100011001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010010111;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110010100;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101010000;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011101010;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101000010;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111111000;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0111010100;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010110011;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110000010;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111000101;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1000000000;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110111111;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011111010;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0100110110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011110010;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0000011110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100001110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0010100011;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1110101010;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101111110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011011011;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101110011;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0100100000;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0010111110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1110111001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1000101110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011010011;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111100001;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0001100001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0001111010;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011111110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100001011;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101101100;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011101100;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010011001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0000111010;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1001110111;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111110110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1110011000;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011011101;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010101101;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0111100110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0000010100;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011001100;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010011000;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100001001;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111100111;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0001111001;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010001111;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0100010101;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011010100;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1001010011;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101001110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101010000;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011000101;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101110000;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100011011;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0100011000;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010011111;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100001001;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0001101011;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0111011100;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010011011;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0010101100;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101101101;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0010011101;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101100101;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110110001;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100100100;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110001111;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0001000111;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111000000;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1001010110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1000110001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110010010;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1110101110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1001110000;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0000010011;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011111110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0010010001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010001110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011100010;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0111011001;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011111001;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1001110011;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1100100010;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0110110000;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1110110100;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111100000;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1000110101;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0011100110;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1011001110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1000111110;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101101110;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1101001110;
   B = 10'b0000001000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b0101100101;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1111110001;
   B = 10'b0000010000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;

   A = 10'b1010110101;
   B = 10'b0000011000;
   rst = 1; start = 0;
   #10 rst = 0; start = 1;#10 start=0; #380;




      $stop;
   end

endmodule
