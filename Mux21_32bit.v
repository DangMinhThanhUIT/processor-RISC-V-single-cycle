module Mux21_32bit(I0, I1, S, Q);
	input [31:0] I0, I1;
	input S;
	output reg [31:0] Q;
	always @(I0 or I1 or S)
		if(S)
			Q = I1;
		else
			Q = I0;
endmodule 