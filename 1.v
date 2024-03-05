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

   always @(posedge clk or posedge rst)
   begin
      if (rst)
      begin
         ACC <= 11'b0;
         Q <= 10'b0;
         ov <= 0;
      end
      else if (start)
      begin
         {ACC_next, Q_next} = {ACC[9:0], Q, 1'b0};

         if (ACC >= {1'b0, local_B})
         begin
            ACC_next = ACC - {1'b0, local_B};
            {ACC_next, Q_next} = {ACC_next[9:0], Q, 1'b1};
         end

         if (Q_next[9:4] != 0)
         begin
            ov = 1;
         end
         else
         begin
            ACC = ACC_next;
            Q = Q_next;
         end
      end
   end

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
