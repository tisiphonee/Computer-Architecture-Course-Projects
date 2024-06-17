module PipelineD(
    input clk, rst, stallD, flushD,
    input regWriteW,
    input [4:0] RdW,
    input [31:0] resultW, PCF, instrF, PCPlus4F,
    input [2:0] immSrcD,
    output [31:0] PCD, instrD, PCPlus4D, RD1D, RD2D, extImmD,
    output [4:0] Rs1D, Rs2D, RdD,
    output [6:0] op,
    output [2:0] func3,
    output func7
);
    RegIF_ID regIFID(
        .clk(clk), .rst(rst), 
        .en(~stallD), .clr(flushD),

        .PCF(PCF), .PCD(PCD),
        .PCPlus4F(PCPlus4F), .PCPlus4D(PCPlus4D),
        .instrF(instrF), .instrD(instrD)
    );

    RegisterFile RF(
        .clk(clk), .regWrite(regWriteW),
        .writeRegister(RdW), 
        .writeData(resultW),
        .readData1(RD1D), .readData2(RD2D),
        .readRegister1(instrD[19:15]), 
        .readRegister2(instrD[24:20])
    );
    
    ImmExtension Extend(
        .immSrc(immSrcD), .w(extImmD),
        .data(instrD[31:7])
    );

    assign op    = instrD[6:0];
    assign RdD   = instrD[11:7];
    assign func3 = instrD[14:12];
    assign Rs1D  = instrD[19:15];
    assign Rs2D  = instrD[24:20];
    assign func7 = instrD[30];

endmodule
