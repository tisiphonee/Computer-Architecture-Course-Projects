`define Add 3'b000
`define Sub 3'b001
`define And 3'b010
`define Or  3'b011
`define Slt 3'b101
`define Xor 3'b100
`define SltU 3'b110

module ALU(AluOpcode, InputA , InputB, ZeroFlag, NegFlag, Result);

    input [2:0] AluOpcode;
    input signed [31:0] InputA, InputB;
    
    output ZeroFlag, NegFlag;
    output reg signed [31:0] Result;
    
    always @(InputA or InputB or AluOpcode) begin
        case (AluOpcode)
            `Add   :  Result = InputA + InputB;
            `Sub   :  Result = InputA - InputB;
            `And   :  Result = InputA & InputB;
            `Or    :  Result = InputA | InputB;
            `SltU  :  Result = {1'b0, InputA} < {1'b0, InputB} ? 32'd1 : 32'd0;
            `Slt   :  Result = InputA < InputB ? 32'd1 : 32'd0;
            `Xor   :  Result = InputA ^ InputB;
            default:  Result = {32{1'bz}};
        endcase
    end

    assign ZeroFlag = (~|Result);
    assign NegFlag = Result[31];

endmodule