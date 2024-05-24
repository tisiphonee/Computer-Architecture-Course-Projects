`define Itype 3'b000
`define Stype 3'b001
`define Btype 3'b010
`define Jtype 3'b011
`define Utype 3'b100

module ImmExtension(ImmSlc, ImmData, Result);

    input [2:0] ImmSlc;
    input [24:0] ImmData;
    
    output reg [31:0] Result;

    always @(ImmSlc, ImmData) begin
        case (ImmSlc)
            `Itype   : Result <= {{20{ImmData[24]}}, ImmData[24:13]};
            `Stype   : Result <= {{20{ImmData[24]}}, ImmData[24:18], ImmData[4:0]};
            `Jtype   : Result <= {{12{ImmData[24]}}, ImmData[12:5], ImmData[13], ImmData[23:14], 1'b0};
            `Btype   : Result <= {{20{ImmData[24]}}, ImmData[0], ImmData[23:18], ImmData[4:1], 1'b0};
            `Utype   : Result <= {ImmData[24:5], {12{1'b0}}};
            default: Result <= 32'b0;
        endcase
    end

endmodule