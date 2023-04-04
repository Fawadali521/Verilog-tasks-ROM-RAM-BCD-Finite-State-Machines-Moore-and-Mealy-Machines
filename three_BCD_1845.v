module three_BCD (BCDu, BCDt, BCDh, CLOCK, CLR);
	output [3:0] BCDu, BCDt, BCDh;  // output of BCDs
	input CLOCK, CLR;  // input to BCDs
	//module BCD (Q, CLOCK, CLR);
	BCD x1(BCDu, CLOCK, CLR);    // BCD first
	BCD x2(BCDt, BCDu[3], CLR);  // BCD second
	BCD x3(BCDh, BCDt[3], CLR);   // BCD third
endmodule