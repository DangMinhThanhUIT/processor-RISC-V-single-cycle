module ALU(ALUcontrol, A, B, isZero, ALUResult);
	input [3:0] ALUcontrol;
	input [31:0] A, B;
	output reg [31:0] ALUResult;
	output isZero;
	
	always @(ALUcontrol or A or B)
	begin 
		case (ALUcontrol)
			0: ALUResult <= A & B;
			1: ALUResult <= A | B;
			2: ALUResult <= A + B;
			6: ALUResult <= A - B;
			7: ALUResult <= A < B ? 1 : 0;
			12: ALUResult <= ~(A | B);
			default: ALUResult <= 0;
		endcase
	end
	
	assign isZero = (ALUResult == 0);
endmodule 