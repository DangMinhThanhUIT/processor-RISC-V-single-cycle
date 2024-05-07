module ProgramCounter(PCNext, PCResult, Reset, Clk);
	input [31:0] PCNext;
	input Reset, Clk;
	output reg [31:0] PCResult;

	initial begin	
		PCResult <= 32'h00000000;
	end

    always @(posedge Clk)
    	if (Reset == 1)
    		PCResult <= 32'h00000000;
    	else
			//if (PCWrite == 1)
			PCResult <= PCNext;
		//$display("PC=%h",PCResult);
endmodule 