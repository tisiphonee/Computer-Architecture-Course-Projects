module Adder (
    input [31:0] a,
    input [31:0] b,
    output [31:0] w
);
    assign w = a + b;

endmodule