module RegisterFile(clk, RegWrite,
                    ReadReg1, ReadReg2,
                    WriteReg, WriteD,
                    ReadData1, ReadData2);

    input RegWrite, clk;
    input [4:0] ReadReg1, ReadReg2, WriteReg;
    input [31:0] WriteD;
    output [31:0] ReadData1, ReadData2;

    reg [31:0] registerFile [0:31];

    initial 
        registerFile[0] = 32'd0;

    always @(posedge clk) begin
        if (RegWrite & (|WriteReg))
            registerFile[WriteReg] <= WriteD;
    end

    assign ReadData1 = registerFile[ReadReg1];
    assign ReadData2 = registerFile[ReadReg2];

endmodule