module fixed_point_division
  (
   input clk, 
   input rst,  
   input start,
   input ld_a,
   input ld_b,
   input [9:0] A,
   input [9:0] B, 
   output reg [9:0] q,
   output ov
   );

   wire [9:0] a_reg_out;
   wire [9:0] b_reg_out;
   reg [10:0] ACC;
   reg [9:0] Q;
   wire [10:0] ACC_next;
   reg [9:0] Q_next;
   wire gT;
   wire [3:0] counter_out;
   wire  [10:0] sub_result;

   mod_14_CNT counter(clk,rst,counter_out);

   Register register_a(clk, rst, ld_a, A, a_reg_out);
   Register register_b(clk, rst, ld_b, B, b_reg_out);
   comparator comp_ACC_B(clk,ACC,b_reg_out,gT);
   overflow_detector ov_detecor(clk,counter_out,Q_next,ov);

   #Main section:   
   scsubtractor sub(clk,gT,ACC_next,B,sub_result);
   


endmodule





