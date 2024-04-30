module datapath(
    input clk, input rst,
    input [1:0] PCSrc, input [1:0] ResultSrc,
    input MemWrite, input [2:0] ALUControl, input ALUSrc,
    input [2:0] ImmSrc, input RegWrite,
    output zero, output sign,
    output reg [6:0] opcode, output reg [2:0] func3, output reg [6:0] func7
);

wire [31:0] PCIn , PCOut , Inst;
PC pc(.input_data(PCIn), .clock(clk), .reset(rst), .output_data(PCOut));
InstMemory instmem(.pc(PCOut), .inst(Inst));
wire [4:0] A1, A2 , A3 ;
wire [24:0] imm;
assign opcode = Inst[6:0];
assign func3 = Inst[14:12];
assign func7 = Inst[31:25];
assign A1 = Inst[19:15];
assign A2 = Inst[24:20];
assign A3 = Inst[11:7];
assign imm = Inst[31:7];
wire [31:0] RD1 , RD2 , Result;
RegisterFile regfile(
    .read_address_1(A1), .read_address_2(A2), .write_address(A3),
    .write_data(Result), .write_enable(RegWrite), .clock(clk),
    .read_data_1(RD1), .read_data_2(RD2)
);
wire signed [31:0] SrcA , SrcB;
assign SrcA = RD1;
wire [31:0] immext;
Mux2To1 mux21(
    .a0(RD2), .a1(immext), .sel(ALUSrc),
    .out(SrcB)
);
wire [31:0] ALUResult;
ALU alu(
    .operand_A(SrcA), .operand_B(SrcB), .operation(ALUControl),
    .is_zero(zero), .is_negative(sign), .result(ALUResult)
);
wire [31:0] ReadData;
DataMemory datamem(
    .address(ALUResult), .writeData(RD2),
    .writeEnable(MemWrite), .clk(clk),
    .readData(ReadData)
);
wire [31:0] PCPlus4 , PCTarget;
Mux4To1 mux41(
    .a0(ALUResult), .a1(ReadData), .a2(PCPlus4), .a3(immext),
    .sel(ResultSrc), .out(Result)
);
Adder pctarget(.input_a(PCOut), .input_b(immext), .sum(PCTarget));
Adder pc4(
    .input_a(PCOut),
    .input_b(32'b00000000000000000000000000000100),
    .sum(PCPlus4)
);
Mux3To1 pcmux31(
    .a0(PCPlus4), .a1(PCTarget), .a2(ALUResult),
    .sel(PCSrc), .out(PCIn)
);
ImmExt immextend(
    .in(imm), .ImmSrc(ImmSrc), .out(immext)
);

endmodule
