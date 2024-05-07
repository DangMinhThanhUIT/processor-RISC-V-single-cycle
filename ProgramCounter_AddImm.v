module ProgramCounter_AddImm(pc_in, imm, pc_out);
	input [31:0] pc_in, imm;
	output reg [31:0] pc_out;
	always @(pc_in) 
	begin
		if (pc_in == 32'hffffffff)
			pc_out = pc_in;
		else pc_out = pc_in + imm;
	end
endmodule 