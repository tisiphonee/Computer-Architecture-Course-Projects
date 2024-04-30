module datapath(
    input clk, 
    input rst,
    input [1:0] PCSrc, 
    input [1:0] ResultSrc,
    input MemWrite, 
    input [2:0] ALUControl, 
    input ALUSrc,
    input [2:0] ImmSrc, 
    input RegWrite,
    output zero, 
    output sign,
    output reg [6:0] opcode, 
    output reg [2:0] func3, 
    output reg [6:0] func7
);

wire [31:0] PCIn , PCOut , Inst;
wire [4:0] ReadAddr1, ReadAddr2 , WriteAddr ;
wire [24:0] imm;
wire [31:0] RegData1 , RegData2 , Result;
wire signed [31:0] SourceA , SourceB;
wire [31:0] immext;
wire [31:0] ALUResult;
wire [31:0] ReadData;
wire [31:0] PCPlus4 , PCTarget;


assign opcode = Inst[6:0];
assign func3 = Inst[14:12];
assign func7 = Inst[31:25];

assign ReadAddr1 = Inst[19:15];
assign ReadAddr2 = Inst[24:20];
assign WriteAddr = Inst[11:7];

assign imm = Inst[31:7];

assign SourceA = RegData1;


PC pc(.input_data(PCIn), .clock(clk), .reset(rst), .output_data(PCOut));
InstMemory instmem(.pc(PCOut), .inst(Inst));
RegisterFile regfile(
    .read_address_1(ReadAddr1), .read_address_2(ReadAddr2), .write_address(WriteAddr),
    .write_data(Result), .write_enable(RegWrite), .clock(clk),
    .read_data_1(RegData1), .read_data_2(RegData2)
);
Mux2To1 mux21(
    .a0(RegData2), .a1(immext), .sel(ALUSrc),
    .out(SourceB)
);
ALU alu(
    .operand_A(SourceA), .operand_B(SourceB), .operation(ALUControl),
    .is_zero(zero), .is_negative(sign), .result(ALUResult)
);
DataMemory datamem(
    .address(ALUResult), .writeData(RegData2),
    .writeEnable(MemWrite), .clk(clk),
    .readData(ReadData)
);
Mux4To1 mux41(
    .a0(ALUResult), .a1(ReadData), .a2(PCPlus4), .a3(immext),
    .sel(ResultSrc), .out(Result)
);
Adder pctarget(.input_a(PCOut), .input_b(immext), .sum(PCTarget));
Adder pc4(
    .input_a(PCOut),
    .input_b(32'd4),
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
