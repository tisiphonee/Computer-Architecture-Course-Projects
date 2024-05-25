module Register(Input, Enable, rst, clk, Output);

    input Enable, clk, rst;
    input [31:0] Input;
    output reg [31:0] Output;

    always @(posedge clk or posedge rst) begin
        if (rst)
            Output <= 32'b0;
        else if (Enable)
            Output <= Input;
    end

endmodule