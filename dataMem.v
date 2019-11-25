module dataMemory(clk, adr, writeIn, readOut, writePin, readPin);

input clk;
input [0:2] adr;
input [0:31] writeIn;
input writePin;
input readPin;

output reg [0:31]readOut;

reg [0:31]memBlock[0:7];

initial $readmemb("dataMem.txt", memBlock);

always @(posedge clk)
begin
  if(writePin == 1) memBlock[adr] = writeIn;
  if(readPin == 1) readOut = memBlock[adr];
end
endmodule
