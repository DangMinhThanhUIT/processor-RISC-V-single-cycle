module PC (clk, Reset, PC_in, PC_out);
input 	  clk;
input 	  Reset;
input      [31:0]PC_in;
output reg [31:0]PC_out;

always @(posedge clk) begin
	if (Reset == 1'b1) begin
		PC_out <= 32'b0;
		end
	else begin
		PC_out <= PC_in;
		end
end
endmodule