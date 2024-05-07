module InstructionMemory(Address, Instruction); 
input [31:0] Address; // Input Address 
output [31:0] Instruction; // Instruction at memory location Address
reg [31:0] mem [31:0];

initial	begin
	$readmemb("InsMem.txt", mem);
end

assign Instruction = mem[Address>>2];
endmodule 