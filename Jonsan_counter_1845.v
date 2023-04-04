module JS_counter(CLK, CLR, Q);
	input CLK, CLR;
	output [3:0] Q;
	wire [3:0] Qn; //wire use for input in the first flip flop
	//module DFF (D,clock, reset, Q, Qn);
	DFF x1(Qn[0], CLK, CLR, Q[3], Qn[3]);
	DFF x2(Q[3], CLK, CLR, Q[2], Qn[2]);
	DFF x3(Q[2], CLK, CLR, Q[1], Qn[1]);
	DFF x4(Q[1], CLK, CLR, Q[0], Qn[0]);
endmodule