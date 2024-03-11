`timescale 1ns/1ns
module mod_14_CNT(input clk,rst ,output reg [3:0] count,output reg carry_out);
   always @(posedge clk or posedge rst)
   begin 
      if (rst)
      begin
         count <= 4'b0;
         carry_out <= 1'b0;
      end
      else if (count == 4'b1101)
      begin
         count <= 4'b0;
         carry_out <= 1'b1;
      end
      else 
      begin
         count <= count + 1;
         carry_out <= 1'b0;
      end
   end
endmodule