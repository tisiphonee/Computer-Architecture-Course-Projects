module datapath(input rst,input[1:0] PCSrc , input[1:0] ResultSrc , input MemWrite ,  input [2:0] ALUControl , input ALUSrc ,
	input[2:0] ImmSrc ,input RegWrite , input clk
	,output zero , sign , output reg[6:0] opcode , output reg[2:0] func3 , output reg[6:0] func7 );
	wire [31:0] PCIn , PCOut , Inst;
	PC pc( PCIn, clk , rst , PCOut);
	InstMemory instmem(PCOut, Inst);
	wire[4:0] A1, A2 , A3 ;
	wire [24:0] imm;
	assign opcode = Inst[6:0];
	assign func3 = Inst[14:12];
	assign func7 = Inst[31:25];
	assign A1 = Inst[19:15];
	assign A2 = Inst[24:20];
	assign A3 = Inst[11:7];
	assign imm = Inst[31:7];
	wire [31:0] RD1 , RD2 , Result;
	RegisterFile regfile(A1 , A2,A3,Result, RegWrite , clk , RD1 , RD2);
	wire signed[31:0] SrcA , SrcB;
	assign SrcA = RD1;
	wire[31:0] immext;
	Mux2To1 mux21(RD2, immext,ALUSrc,SrcB);
	wire[31:0] ALUResult;
	ALU alu(SrcA, SrcB, ALUControl, zero , sign , ALUResult);
	wire [31:0] ReadData;
	DataMemory datamem(ALUResult, RD2, MemWrite , clk , ReadData);
	wire[31:0]  PCPlus4 , PCTarget;
	Mux4To1 mux41(ALUResult,ReadData , PCPlus4, immext,ResultSrc,Result);
	Adder pctarget(PCOut, immext, PCTarget);
	Adder pc4(PCOut, 32'b00000000000000000000000000000100, PCPlus4);
	Mux3To1 pcmux31(PCPlus4, PCTarget ,ALUResult ,PCSrc,PCIn);
	ImmExt immextend(imm , ImmSrc , immext);

endmodule