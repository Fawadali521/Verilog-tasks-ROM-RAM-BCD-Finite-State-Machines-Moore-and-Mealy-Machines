module Combine(CLK, RESET, OUT_DATA);
	input CLK, RESET;
	output [15:0] OUT_DATA;
	wire [3:0]Q;
	parameter En = 1'b1;
	//Dec_4x16 (A, B, C, D, En, OUTPUT);
	//JS_counter (CLK, CLR, Q);
	JS_counter x1(CLK, RESET, Q);
	Dec_4x16 x2(Q[3],Q[2],Q[1],Q[0],En,OUT_DATA);
	
endmodule