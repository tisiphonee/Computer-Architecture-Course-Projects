module PipelineE(
    input clk, rst, flushE,
    input [1:0] forwardAE, forwardBE, resultSrcE, jumpD,
    input [2:0] branchD, ALUControlD, 
    input [4:0] Rs1D, Rs2D, RdD,
    input [31:0] RD1D, RD2D, extImmD, PCPlus4D, PCD, resultW, ALUResultM, luiM,
    output [31:0] ALUResultE, PCTargetE, SrcAE, SrcBE, writeDataE,
    output [4:0] Rs1E, Rs2E, RdE,
    output [1:0] PCSrcE,
    output zero, neg
);
    wire [31:0] SrcBE_internal;
    
    RegID_EX regIDEX(
        .clk(clk), .rst(rst), .clr(flushE), 

        .regWriteD(regWriteD), .regWriteE(regWriteE), 
        .PCD(PCD), .PCE(PCTargetE),
        .Rs1D(Rs1D), .Rs1E(Rs1E),
        .Rs2D(Rs2D), .Rs2E(Rs2E),
        .RdD(RdD), .RdE(RdE),
        .RD1D(RD1D), .RD1E(RD1E),
        .RD2D(RD2D), .RD2E(RD2E), 
        .resultSrcD(resultSrcD), .resultSrcE(resultSrcE),
        .memWriteD(memWriteD), .memWriteE(memWriteE),
        .jumpD(jumpD), .jumpE(jumpE),
        .branchD(branchD), .branchE(branchE),
        .ALUControlD(ALUControlD), .ALUControlE(ALUControlE), 
        .ALUSrcD(ALUSrcD), .ALUSrcE(ALUSrcE),    
        .extImmD(extImmD), .extImmE(extImmE),
        .luiD(luiD), .luiE(luiE),
        .PCPlus4D(PCPlus4D), .PCPlus4E(PCPlus4E) 
    );

    Mux4to1 SrcAreg (
        .sel(forwardAE), .a(RD1E), .b(resultW), .c(ALUResultM), .d(luiM), .w(SrcAE)
    );

    Mux4to1 BSrcBreg(
        .sel(forwardBE), .a(RD2E), .b(resultW), .c(ALUResultM), .d(luiM), .w(writeDataE)
    );

    Mux2to1 SrcBreg(
        .sel(ALUSrcE), .a(writeDataE), .b(extImmE), .w(SrcBE_internal)
    );

    ALU ALU_Instance(
        .ALUControl(ALUControlE), .a(SrcAE), .b(SrcBE_internal), 
        .zero(zero), .neg(neg), .w(ALUResultE)
    );

    Adder PCEAdder(
        .a(PCD), .b(extImmE), .w(PCTargetE)
    );

endmodule
