module ALUControl(funct7, funct3, ALUOp, out);
	input [1:0] ALUOp;
	input [6:0] funct7;
	input [2:0] funct3;
	output reg [3:0] out;
	
	always @(ALUOp or funct7 or funct3)
	begin
		case(ALUOp)
		2'b00: out=4'b0010;
		2'b01: out=4'b0110;
		2'b10:
		begin
				if(funct7 ==7'b000000 && funct3 ==3'b000)
					out=4'b0010;
				else if(funct7 ==7'b0100000 && funct3 ==3'b000)
					out=4'b0110;
				else if(funct7 ==7'b0000000 && funct3 ==3'b111)
					out=4'b0000;
				else if(funct7 ==7'b0000000 && funct3 ==3'b110)
					out=4'b0001;
				else if(funct7 ==7'b0000000 && funct3 ==3'b010)
					out=4'b0111;
				else if(funct7 ==7'b0000000 && funct3 ==3'b100)
					out=4'b1100;
		end
		endcase
	end
endmodule 