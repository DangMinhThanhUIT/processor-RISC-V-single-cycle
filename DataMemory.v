module DataMemory(clk, Address, WriteData, MemRead, MemWrite, ReadData);
	input clk, MemRead, MemWrite;
	input [31:0] Address;
	input [31:0] WriteData;
	output reg [31:0] ReadData;
	
	//parameter with = 4294967295;
	reg [31:0] memory [31:0];
	
	initial $readmemb("DataMem.txt", memory);
	
	always@(posedge clk)
	begin
		if(MemRead == 1'b1 && MemWrite == 1'b0)
			ReadData = memory[Address];

		if(MemWrite == 1'b1 && MemRead == 1'b0) 
		begin
			ReadData = 32'bz;
			memory[Address] = WriteData;
		end

		if((MemWrite == 1'b1 && MemRead == 1'b1) || (MemWrite == 1'b0 && MemRead == 1'b0)) 
			ReadData = 32'bz;
	end
	
	always@(posedge clk)
		$writememb("DataMem.txt", memory);
endmodule 