module comparator (
  input wire clk,
  input wire [10:0] ACC,
  input wire [9:0] b_reg_out,
  output reg gT
);

  always @(posedge clk) begin
    gT <= (ACC >= {1'b0, b_reg_out});
  end

endmodule