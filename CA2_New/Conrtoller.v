module Controller (
    input zero, sign,
    input [6:0] opcode,
    input [2:0] func3,
    input [6:0] func7,
    output reg [1:0] PCSrc,
    output reg [1:0] ResultSrc,
    output reg MemWrite,
    output reg [2:0] ALUControl,
    output reg ALUSrc,
    output reg [2:0] ImmSrc,
    output reg RegWrite
);

    reg branch;

    always @ (opcode, func3, func7) begin
        case(opcode)
            // R-type instructions
            7'b0110011: begin 
                // ALU operations: add, sub, sltu, slt, or, and
                RegWrite <= 1; ImmSrc <= 3'b000; ALUSrc <= 0; MemWrite <= 0; ResultSrc <= 2'b00; PCSrc <= 2'b00;
                if (func7 == 7'b0000000 && func3 == 3'b000) ALUControl = 3'b010; // add
                else if (func7 == 7'b0100000 && func3 == 3'b000) ALUControl = 3'b110; // sub
                else if (func7 == 7'b0000000 && func3 == 3'b010) ALUControl = 3'b100; // sltu
                else if (func7 == 7'b0000000 && func3 == 3'b011) ALUControl = 3'b111; // slt
                else if (func7 == 7'b0000000 && func3 == 3'b110) ALUControl = 3'b001; // or
                else if (func7 == 7'b0000000 && func3 == 3'b111) ALUControl = 3'b000; // and
            end
            // Load instructions
            7'b0000011: begin 
                // Memory read operation: lw
                RegWrite <= 1; ImmSrc <= 3'b000; ALUSrc <= 1; MemWrite <= 0; ResultSrc <= 2'b01; PCSrc <= 2'b00;
                if (func3 == 3'b010) ALUControl = 3'b010; 
            end
            // Immediate-type instructions
            7'b0010011: begin
                RegWrite <= 1; ImmSrc <= 3'b000; ALUSrc <= 1; MemWrite <= 0; ResultSrc <= 2'b00; PCSrc <= 2'b00;
                if (func3 == 3'b000) ALUControl = 3'b010; // addi
                if (func3 == 3'b010) ALUControl = 3'b100; // sltui
                if (func3 == 3'b011) ALUControl = 3'b111; // slti
                if (func3 == 3'b100) ALUControl = 3'b011; // xori
                if (func3 == 3'b110) ALUControl = 3'b001; // ori
            end
            // Jump and link register
            7'b1100111: begin
                // Jump and link register operation: jalr
                RegWrite <= 1; ImmSrc <= 3'b000; ALUSrc <= 1; MemWrite <= 0; ResultSrc <= 2'b10; PCSrc <= 2'b10;
                if (func3 == 3'b000) ALUControl = 3'b010; 
            end
            // Store instructions
            7'b0100011: begin
                // Memory write operation: sw
                RegWrite <= 0; ImmSrc <= 3'b001; ALUSrc <= 1; MemWrite <= 1; ResultSrc <= 2'b00; PCSrc <= 2'b00;
                if (func3 == 3'b010) ALUControl = 3'b010; // sw
            end
            // Jump and link
            7'b1101111: begin
                // Jump and link operation: jal
                RegWrite <= 1; ImmSrc <= 3'b011; ALUSrc <= 0; MemWrite <= 0; ResultSrc <= 2'b10; PCSrc <= 2'b01;
                ALUControl = 3'b010; // jal
            end
            // Branch instructions
            7'b1100011: begin
                // Branch operations: beq, bne, blt, bge
                RegWrite <= 0; ImmSrc <= 3'b010; ALUSrc <= 0; MemWrite <= 0; ResultSrc <= 2'b00;
                if (func3 == 3'b000) begin ALUControl = 3'b110; if (zero == 1) PCSrc = 1; else PCSrc = 2'b00; end // beq
                if (func3 == 3'b001) begin ALUControl = 3'b110; if (zero == 1) PCSrc = 0; else PCSrc = 2'b01; end // bne
                if (func3 == 3'b100) begin ALUControl = 3'b110; if (sign == 1) PCSrc = 1; else PCSrc = 2'b00; end // blt
                if (func3 == 3'b101) begin ALUControl = 3'b110; if (sign == 0 || zero == 1) PCSrc = 1; else PCSrc = 2'b00; end // bge
            end
            // LUI instruction
            7'b0110111: begin
                // Load upper immediate operation: lui
                RegWrite <= 1; ImmSrc <= 3'b100; ALUSrc <= 1; MemWrite <= 0; ResultSrc <= 2'b11; PCSrc <= 2'b00;
                ALUControl = 3'b010; 
            end
        endcase
    end

endmodule
