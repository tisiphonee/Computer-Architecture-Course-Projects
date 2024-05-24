module Mux2To1 (slc, a, b, w);

    input slc;
    input [31:0] a;
    input [31:0] b;
    output reg [31:0] w;

    always @* begin
        w = slc ? b : a;
    end

endmodule
