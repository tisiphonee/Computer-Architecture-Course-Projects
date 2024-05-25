module BranchController(func3, branch, neg, zero, w);

    parameter [2:0] BEQ = 3'b000,
                    BNE = 3'b001,
                    BLT = 3'b010,
                    BGE = 3'b011;

    input branch, zero, neg;
    inout [2:0] func3;

    output reg w;
    
    always @(func3, zero, neg, branch) begin
        case (func3)
            BEQ   : w <= branch & zero;
            BNE   : w <= branch & ~zero;
            BLT  : w <= branch & neg;
            BGE   : w <= branch & (zero | ~neg);
            default: w <= 1'b0;
        endcase
    end

endmodule