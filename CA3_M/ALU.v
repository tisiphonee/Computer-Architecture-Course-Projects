`define ADD 3'b000
`define SUB 3'b001
`define AND 3'b010
`define OR  3'b011
`define SLT 3'b101
`define XOR 3'b100
`define SLTU 3'b110

module ALU(ALUControl, a, b, zero, neg, w);
    parameter N = 32;

    input [2:0] ALUControl;
    input signed [N-1:0] a, b;
    
    output zero, neg;
    output reg signed [N-1:0] w;
    
    always @(a or b or ALUControl) begin
        case (ALUControl)
            `ADD   :  w = a + b;
            `SUB   :  w = a - b;
            `AND   :  w = a & b;
            `OR    :  w = a | b;
            `SLTU  :  w = {1'b0, a} < {1'b0, b} ? 32'd1 : 32'd0;
            `SLT   :  w = a < b ? 32'd1 : 32'd0;
            `XOR   :  w = a ^ b;
            default:  w = {N{1'bz}};
        endcase
    end

    assign zero = (~|w);
    assign neg = w[N-1];

endmodule