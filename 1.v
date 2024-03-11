module fixed_point_division
  (
   input clk, 
   input rst,  
   input start,
   input ld_a,
   input ld_b,
   input [9:0] A,
   input [9:0] B, 
   output  [9:0] Q_next,
   output ov
   );
  // # Wires: 
   wire [9:0] a_reg_out;
   wire [9:0] b_reg_out;
   wire [10:0] ACC_next;
   wire gT;
   wire CO_CNT;
   wire [3:0] counter_out;
   wire  [10:0] sub_result;
  // #################################
  // # Not defined Yet : 
  // wire ld_q;
  // ## RegisterQ lds signal 
  // #################################

   mod_14_CNT counter(clk,rst,counter_out,CO_CNT);

   Register register_a(clk, rst, ld_a, A, a_reg_out);
   Register register_b(clk, rst, ld_b, B, b_reg_out);
   comparator comp_ACC_B(clk,ACC_next,b_reg_out,gT);
   overflow_detector ov_detecor(clk,counter_out,Q_next,ov);

  // #Main section:   
  subtractor sub(clk,gT,ACC_next,B,sub_result);
  RegisterACC acc_reg(clk,rst,gT,A,Q_next,ACC_next,sub_result,ACC_next);
  RegisterQ q_reg(clk,rst,gT,A,Q_next,Q_next);

endmodule




