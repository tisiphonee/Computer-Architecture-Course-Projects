`timescale 1ns/1ns

module testbench_top;
   reg clk, rst, start;
   reg [9:0] A, B;
   wire ov;
   wire [9:0] Q;
    wire busy , valid;
   div_top uut (clk,start,A, B, Q, busy, valid,ov);

   assign clk = 0;
   initial begin forever #5 clk = ~clk; end

   initial
   begin
A = 10'b0010101000;
B = 10'b1110011100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0111101111;
B = 10'b0111011011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #184; $display("%bQ=%b", valid, Q);

A = 10'b1011000100;
B = 10'b0011100000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010001000;
B = 10'b0101000001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110010110;
B = 10'b0111011100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011001101;
B = 10'b0011101000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110001111;
B = 10'b1011110111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011111111;
B = 10'b1010010100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1001011001;
B = 10'b1001100001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011100111;
B = 10'b1111000000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100111011;
B = 10'b1100010100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110101011;
B = 10'b0001011101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110111110;
B = 10'b1100001011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1100000100;
B = 10'b0111011001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010111011;
B = 10'b0001111111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1101101001;
B = 10'b0101100011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010011110;
B = 10'b1000101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010001101;
B = 10'b1010000010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1011100111;
B = 10'b1111100011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0111011001;
B = 10'b0000100001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1101011101;
B = 10'b1101101110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1001101010;
B = 10'b1100111000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100000101;
B = 10'b1011100000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110011101;
B = 10'b0010010111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000101010;
B = 10'b1001100110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1011101101;
B = 10'b1111101011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010001110;
B = 10'b0011100000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110011000;
B = 10'b0100101010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1001111111;
B = 10'b0010101001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100100110;
B = 10'b1111001000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1101001001;
B = 10'b1010100101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000001100;
B = 10'b0111110100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000110100;
B = 10'b0001001000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0101000001;
B = 10'b1111001111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011100011;
B = 10'b1010110100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000011110;
B = 10'b1111011001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1110010001;
B = 10'b0010010000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111010111;
B = 10'b0101100110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1100011001;
B = 10'b0101110101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011101110;
B = 10'b1111111110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010101001;
B = 10'b1111110001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111111011;
B = 10'b0110101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001001101;
B = 10'b1101001000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0101010101;
B = 10'b1110111001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000011010;
B = 10'b1001010010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100111111;
B = 10'b1111011011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111101111;
B = 10'b0111010101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011101001;
B = 10'b0110100101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010111100;
B = 10'b0110010111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1100100101;
B = 10'b0010001000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110111100;
B = 10'b0110101000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000110011;
B = 10'b1110111100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0111101111;
B = 10'b1111010101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1101001111;
B = 10'b1100100111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100111010;
B = 10'b1000011111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000101000;
B = 10'b0010111111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000011111;
B = 10'b1111000010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1001010100;
B = 10'b0110110110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110100001;
B = 10'b1011110011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001101011;
B = 10'b1010101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001010100;
B = 10'b1011000110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000010110;
B = 10'b0001011000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010110100;
B = 10'b0011000101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011000111;
B = 10'b1100110000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0101001010;
B = 10'b1111010100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000010100;
B = 10'b1011101001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1110100101;
B = 10'b1010101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001001101;
B = 10'b0001101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010010010;
B = 10'b0010000101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000011010;
B = 10'b1000001111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110000000;
B = 10'b0111001101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111011000;
B = 10'b0000111111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001000010;
B = 10'b0000000011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110111011;
B = 10'b1110001010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0100010101;
B = 10'b0110101011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001111001;
B = 10'b1100010111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001010111;
B = 10'b1011010101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110011110;
B = 10'b1110101100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010011011;
B = 10'b1111110001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110101110;
B = 10'b0101000001;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0110001100;
B = 10'b1100001111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010100111;
B = 10'b0011001101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1100010011;
B = 10'b1110101010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0011010100;
B = 10'b0100011110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0101010111;
B = 10'b1101001101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1011001111;
B = 10'b0001100000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0111100010;
B = 10'b0011011110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000100001;
B = 10'b1001111110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0101110000;
B = 10'b0011001010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0111001110;
B = 10'b0110111111;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0010100111;
B = 10'b1110010000;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000001000;
B = 10'b0110001110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111001100;
B = 10'b1000111100;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1100101000;
B = 10'b0011111011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1000011001;
B = 10'b0100011011;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0001101001;
B = 10'b1100001110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1010101111;
B = 10'b1101101101;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000010000;
B = 10'b0010111010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b1111110101;
B = 10'b1000100010;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);

A = 10'b0000000001;
B = 10'b1011011110;
rst = 1; start = 0;

#10 rst = 0; start = 1; #178; $display("%bQ=%b", valid, Q);


      $stop;
   end

endmodule
