`define ADD 3'b000
`define SUB 3'b001
`define AND 3'b010
`define OR  3'b011
`define SLT 3'b101
`define SLTU 3'b100
`define XOR 3'b110

module ALU(AluOpcode, InputA , InputB, ZeroFlag, NegFlag, Result);

    input [2:0] AluOpcode;
    input signed [31:0] InputA, InputB;
    
    output ZeroFlag, NegFlag;
    output reg signed [31:0] Result;
    
    always @(InputA or InputB or AluOpcode) begin
        case (AluOpcode)
            `ADD   :  Result = InputA + InputB;
            `SUB   :  Result = InputA - InputB;
            `AND   :  Result = InputA & InputB;
            `OR    :  Result = InputA | InputB;
            `SLTU  :  Result = {1'b0, InputA} < {1'b0, InputB} ? 32'd1 : 32'd0;
            `SLT   :  Result = InputA < InputB ? 32'd1 : 32'd0;
            `XOR   :  Result = InputA ^ InputB;
            default:  Result = {32{1'bz}};
        endcase
    end

    assign ZeroFlag = (~|Result);
    assign NegFlag = Result[31];

endmodule