`define I_T 3'b000
`define S_T 3'b001
`define B_T 3'b010
`define J_T 3'b011
`define U_T 3'b100

module ImmExtension(ImmSlc, ImmData, Result);

    input [2:0] ImmSlc;
    input [24:0] ImmData;
    
    output reg [31:0] Result;

    always @(ImmSlc, ImmData) begin
        case (ImmSlc)
            `I_T   : Result <= {{20{ImmData[24]}}, ImmData[24:13]};
            `S_T   : Result <= {{20{ImmData[24]}}, ImmData[24:18], ImmData[4:0]};
            `J_T   : Result <= {{12{ImmData[24]}}, ImmData[12:5], ImmData[13], ImmData[23:14], 1'b0};
            `B_T   : Result <= {{20{ImmData[24]}}, ImmData[0], ImmData[23:18], ImmData[4:1], 1'b0};
            `U_T   : Result <= {ImmData[24:5], {12{1'b0}}};
            default: Result <= 32'b0;
        endcase
    end

endmodule