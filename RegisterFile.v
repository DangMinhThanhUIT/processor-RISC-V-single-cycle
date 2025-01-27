module Register_File(CLK, ReadAddress1, ReadAddress2, WriteAddress, WriteData, ReadData1, ReadData2, WriteEn);
input CLK;
input [4:0] ReadAddress1, ReadAddress2, WriteAddress;
input [31:0] WriteData;
input WriteEn;
output reg [31:0] ReadData1, ReadData2;

reg [31:0] reg1 [31:0];

initial begin
	reg1[2] = 7;
	reg1[3] = 6;
end

always @(posedge CLK) begin
	ReadData1 <= reg1[ReadAddress1];
	ReadData2 <= reg1[ReadAddress2];
	if (WriteEn)
		reg1[WriteAddress] <= WriteData;
end
endmodule
