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
   output reg ov
   );

   reg [9:0] local_A;
   reg [9:0] local_B;
   reg [10:0] ACC;
   reg [9:0] Q;
   reg [10:0] ACC_next;
   reg [9:0] Q_next;
   wire gT;
   wire [3:0] counter_out;




   mod_14_CNT(clk,rst,counter_out);
   assign gT = (ACC >= {1'b0, B});
   assign ov = (counter_out == 4'b1001) && (Q_next[9:4] != 6'b000000);


   always @(posedge clk or posedge rst)
   begin
      if (rst)
      begin
         local_A <= 10'b0;
      end
      else if (ld_a)
      begin
         local_A <= A;
      end
   end

   always @(posedge clk or posedge rst)
   begin
      if (rst)
      begin
         local_B <= 10'b0;
      end
      else if (ld_b)
      begin
         local_B <= B;
      end
   end

   assign q = Q;

endmodule


module mod_14_CNT(input clk,rst ,output reg [3:0] count);
   always@(posedge clk or posedge rst)
   begin 
      if(rst)
        count<=4'b0;
      else if (count == 4'b1101)
         count<=4'b0;
      else 
          count <= count + 1;
   end
endmodule


