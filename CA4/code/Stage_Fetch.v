module PipelineF (
    input clk,
    input rst,
    input [6:0] op,
    input [2:0] func3,
    input func7,
    output [31:0] PCF_Prime,
    output [31:0] PCF,
    output [31:0] instrF,
    output [31:0] PCPlus4F
);

    wire [31:0] PCPlus4M, PCF_Prime_wire, PCF_wire, instrF_wire, PCPlus4F_wire;
    wire stallF_wire, stallD_wire, flushD_wire;

    Adder PCFAdder(
        .a(PCF_wire), .b(32'd4), .w(PCPlus4F_wire)
    );

    Register PCreg(
        .in(PCF_Prime_wire), .clk(clk), .en(~stallF_wire), 
        .rst(rst), .out(PCF_wire)
    );

    InstructionMemory IM(
        .pc(PCF_wire), .instruction(instrF_wire)
    );

    Mux4to1 PCmux(
        .sel(PCSrcE), .a(PCPlus4F_wire), .b(PCTargetE), 
        .c(ALUResultE), .d(32'bz), .w(PCF_Prime_wire)
    );

    RegIF_ID regIFID(
        .clk(clk), .rst(rst), 
        .en(~stallD_wire), .clr(flushD_wire),

        .PCF(PCF_wire),                 .PCD(PCD_wire),
        .PCPlus4F(PCPlus4F_wire),       .PCPlus4D(PCPlus4D_wire),
        .instrF(instrF_wire),           .instrD(instrD_wire)
    );

    assign PCF_Prime = PCF_Prime_wire;
    assign PCF = PCF_wire;
    assign instrF = instrF_wire;
    assign PCPlus4F = PCPlus4F_wire;

endmodule
