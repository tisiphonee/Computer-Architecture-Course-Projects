module RISC_V(input clk  , rst);
	wire MemWrite,ALUSrc,RegWrite,zero,sign;
	wire [1:0] PCSrc;
	wire[1:0]ResultSrc;
	wire[2:0] ImmSrc;
	wire [2:0] ALUControl,func3;
	wire[6:0]opcode,func7;
	datapath d(rst , PCSrc , ResultSrc ,MemWrite , ALUControl ,ALUSrc ,
	ImmSrc ,RegWrite , clk
	,zero , sign , opcode , func3 ,func7 );
	Controller c(zero , sign , opcode , func3 , func7 ,
	PCSrc , ResultSrc ,MemWrite ,  ALUControl , ALUSrc ,
	ImmSrc ,RegWrite);
endmodule
