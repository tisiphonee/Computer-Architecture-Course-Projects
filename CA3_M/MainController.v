module RISCV_Controller(
    input clk, rst,
    input [6:0] opcode,
    input zero_flag, negative_flag,
    output reg [1:0] result_source, ALU_Source_A, ALU_Source_B, ALU_Operation,
    output reg [2:0] immediate_source,
    output reg address_source, register_write_enable, memory_write_enable, PC_update_enable, branch_control, instruction_register_write
);

    parameter IF = 5'b00000, ID = 5'b00001, EX = 5'b00010, MEM = 5'b00011, WB = 5'b00100;

    reg [4:0] current_state, next_state;

    always @(current_state, opcode) begin
        case (current_state)
            IF: next_state = ID;
            ID: next_state = (opcode == 7'b0010011) ? EX :
                              (opcode == 7'b0110011) ? EX :
                              (opcode == 7'b1100011) ? EX :
                              (opcode == 7'b1101111) ? EX :
                              (opcode == 7'b0110111) ? EX :
                              (opcode == 7'b0100011) ? EX :
                              (opcode == 7'b1100111) ? EX :
                              (opcode == 7'b0000011) ? EX : IF;
            EX: next_state = MEM;
            MEM: next_state = WB;
            WB: next_state = IF;
        endcase
    end

    always @(current_state) begin
        case (current_state)
            IF: begin
                instruction_register_write = 1'b1;
                address_source = 1'b0;
                ALU_Source_A = 2'b00;
                ALU_Source_B = 2'b10;
                ALU_Operation = 2'b00;
                result_source = 2'b10;
                PC_update_enable = 1'b1;
            end
            ID: begin
                ALU_Source_A = 2'b01;
                ALU_Source_B = 2'b01;
                ALU_Operation = 2'b00;
                immediate_source = 3'b010;
            end
            EX: begin
                ALU_Source_A = 2'b10;
                ALU_Source_B = 2'b01;
                immediate_source = 3'b000;
                ALU_Operation = 2'b11;
            end
            MEM: begin
                result_source = 2'b00;
                register_write_enable = 1'b1;
            end
            WB: begin
                result_source = 2'b01;
                address_source = 1'b1;
            end
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= IF;
        else
            current_state <= next_state;
    end

endmodule
