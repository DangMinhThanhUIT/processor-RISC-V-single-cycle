`timescale 1ns/100ps
module RISCV_SingleCycle_testbench();
reg CLK, ResetPC;
reg [31:0] Instruction;
initial begin
	#600 $stop;
end
initial begin
	Instruction = 32'b0000000_00010_00011_000_00001_0110011;
	ResetPC = 1;
	#20// Add $1=$3+$2 #R type
	Instruction = 32'b0000000_00010_00011_000_00001_0110011;
	ResetPC = 0;
	#20 // sub s4=s2-s3 #R type
	Instruction = 32'b0100000_00011_00010_000_00100_0110011;
	#40 // or s5=s2|s3 #R type
	Instruction = 32'b0000000_00011_00010_110_00101_0110011;
	#20 // and s6=s2&s3 #R type
	Instruction = 32'b0000000_00011_00010_111_00110_0110011;
	#20 // sll s7=s2<<s3 #R type
	Instruction = 32'b0000000_00011_00010_001_00111_0110011;
	#20 // slt s8 = (s2 << s3) ? 1:0 #R type
	Instruction = 32'b0000000_00011_00010_010_01000_0110011;
	#20 // addi s9 = s2 + 20 #I type
	Instruction = 32'b000000010100_00010_000_01001_0010011;
	#20 // xori s10=s2^20 #I type
	Instruction = 32'b000000010100_00010_100_01010_0010011;
	#20 // ori s11=s2|20 #I type
	Instruction = 32'b000000010100_00010_110_01011_0010011;
	#20 // andi s12=s2&20 #I type
	Instruction = 32'b000000010100_00010_111_01100_0010011;
	#40 // sw M[s2+20]=s1 #S type
	Instruction = 32'b0000000_00001_00010_010_10100_0100011;
	#40 // lw s14=M[s2+20] #I type
	Instruction = 32'b000000010100_00010_010_01110_0000011 ;
	#40 // xor s15=s2^s3 #R type
	Instruction = 32'b0000000_00011_00010_100_01111_0110011;
	#40 // srl s16=s2>>s3 #R type
	Instruction = 32'b0000000_00011_00010_101_10000_0110011;
	#20 // sltu s17=s2<s3 ? 1:0 #R type
	Instruction = 32'b0000000_00011_00010_011_10001_0110011;
	#20 // slli s18=s2<< 2 #I type
	Instruction = 32'b0000000_00010_00010_001_10010_0010011 ;
	#20// srli s19=s2>> 2 #I type
	Instruction = 32'b0000000_00010_00010_001_10011_0010011 ;
	#20// slti s20=s2<20 ? 1:0 #I type
	Instruction = 32'b0000000_10100_00010_010_10100_0010011 ;
	#20// sltiu s21=s2< 20 ?1:0 #I type
	Instruction = 32'b0000000_10100_00010_010_10101_0010011 ;
	#20// lui $22=21<<12 #U type
	Instruction = 32'b00000000000000010101_10110_0110111 ;
	#20// beq $2 = $5 (=7) PC+=PC+Imm, Imm =20 #B type
	Instruction = 32'b0000000_00010_00101_000_10100_1100011;
	#540 $stop();
end
RISCV_SingleCycle Processor(CLK, ResetPC, Instruction);
initial
begin
	CLK = 0;
	forever #10 CLK=~CLK;
end
endmodule