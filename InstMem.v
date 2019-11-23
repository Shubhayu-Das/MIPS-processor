/*
    *  @author   Shubhayu Das
    *  Override the parameters by pasting these into the test bench
    *  defparam uut.BASE_ADDR = 31'b1;
    *  defparam uut.MEM_SIZE = 50;
    *  Base address can be defined as per need;
    *  I will add BASE_ADDR to the relative input address. input address range: [0,MEM_SIZE-1]
*/

module InstMem#(parameter BASE_ADDR = 31'b0,parameter MEM_SIZE = 15)(clk, address, instruction);
    input clk;
    input[31:0] address;
    output reg[31:0] instruction;

    reg [31:0]InstructionMemory [0:MEM_SIZE];

    always@(posedge clk) begin
        $readmemb("./InsMem.dat", InstructionMemory);
        instruction = InstructionMemory[address+BASE_ADDR];
        $display("%d", instruction);
    end

endmodule