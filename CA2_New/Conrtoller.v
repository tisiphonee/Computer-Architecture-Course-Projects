module Controller(input zero , sign , input[6:0] opcode , input[2:0] func3 , input[6:0] func7 ,
	output reg [1:0] PCSrc , output reg[1:0] ResultSrc , output reg MemWrite ,  output reg [2:0] ALUControl , output reg ALUSrc ,
	output reg[2:0] ImmSrc ,output reg RegWrite);
	reg branch ;
	always@(opcode,func3,func7)begin
		case(opcode)
			7'b0110011:begin 
				RegWrite<=1; ImmSrc<=3'b000; ALUSrc<=0; MemWrite<=0; ResultSrc<=2'b00; PCSrc<=2'b00;
				if(func7 == 7'b0000000 & func3 == 3'b000)begin ALUControl=3'b010; end //add
				else if(func7 == 7'b0100000 & func3 == 3'b000) begin ALUControl=3'b110; end //sub
				else if(func7 == 7'b0000000 & func3 == 3'b010) begin ALUControl=3'b100; end //sltu
				else if(func7 == 7'b0000000 & func3 == 3'b011) begin ALUControl=3'b111; end //slt
				else if(func7 == 7'b0000000 & func3 == 3'b110) begin ALUControl=3'b001; end //or
				else if(func7 == 7'b0000000 & func3 == 3'b111) begin ALUControl=3'b000; end //and
			 end
			7'b0000011:begin 
				RegWrite<=1; ImmSrc<=3'b000; ALUSrc<=1; MemWrite<=0; ResultSrc<=2'b01; PCSrc<=2'b00;
				if(func3 == 3'b010)begin ALUControl=3'b010; end //lw
			 end
			7'b0010011:begin
				RegWrite<=1; ImmSrc<=3'b000; ALUSrc<=1; MemWrite<=0; ResultSrc<=2'b00; PCSrc<=2'b00;
				if(func3 == 3'b000) begin ALUControl=3'b010; end //addi
				if(func3 == 3'b010) begin ALUControl=3'b100; end //sltui
				if(func3 == 3'b011) begin ALUControl=3'b111; end //slti
				if(func3 == 3'b100) begin ALUControl=3'b011; end //xori
				if(func3 == 3'b110) begin ALUControl=3'b001; end //ori
			end
			7'b1100111:begin
				RegWrite<=1; ImmSrc<=3'b000; ALUSrc<=1; MemWrite<=0; ResultSrc<=2'b10; PCSrc<=2'b10;
				if(func3 == 3'b000) begin ALUControl=3'b010; end //jalr
			end
			7'b0100011:begin
				RegWrite<=0; ImmSrc<=3'b001; ALUSrc<=1; MemWrite<=1; ResultSrc<=2'b00; PCSrc<=2'b00;
				if(func3 == 3'b010) begin ALUControl=3'b010; end //sw
			end
			7'b1101111:begin
				RegWrite<=1; ImmSrc<=3'b011; ALUSrc<=0; MemWrite<=0; ResultSrc<=2'b10; PCSrc<=2'b01;
				ALUControl=3'b010;//jal
			end
			7'b1100011:begin
				RegWrite<=0; ImmSrc<=3'b010; ALUSrc<=0; MemWrite<=0; ResultSrc<=2'b00;
				if(func3 == 3'b000)begin ALUControl=3'b110; if(zero == 1) PCSrc=1; else PCSrc=2'b00; end //beq
				if(func3 == 3'b001)begin ALUControl=3'b110; if(zero == 1) PCSrc=0; else PCSrc=2'b01; end //bne
				if(func3 == 3'b100)begin ALUControl=3'b110; if(sign == 1) PCSrc=1; else PCSrc=2'b00; end //blt
				if(func3 == 3'b101)begin ALUControl=3'b110; if(sign == 0 | zero ==1) PCSrc=1; else PCSrc=2'b00; end //bge
			end
			7'b0110111:begin
				RegWrite<=1; ImmSrc<=3'b100; ALUSrc<=1; MemWrite<=0; ResultSrc<=2'b11; PCSrc<=2'b00;
				ALUControl=3'b010;//lui
			end
		endcase
	end
endmodule