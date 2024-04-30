module DataMemory (input [31:0] A, WD, input WE , clk , output reg[31:0] RD);

    reg [7:0] dataMem [0:$pow(2, 16)-1];

    reg [31:0] adr;
    assign adr = {A[31:2], 2'b00}; 

    initial $readmemb("test_cases/arr1.mem", dataMem);
    //initial $readmemb("data.mem", dataMem, 1000);

    always @(posedge clk) begin
        if (WE)
            {dataMem[adr ], dataMem[adr +1], dataMem[adr + 2], dataMem[adr +3]} <= WD;
    end

    always @(A or adr) begin
           RD = {dataMem[adr ], dataMem[adr +1], dataMem[adr + 2], dataMem[adr+3]};
    end
endmodule

