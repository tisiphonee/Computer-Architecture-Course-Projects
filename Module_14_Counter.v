`timescale 1ns/1ns
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