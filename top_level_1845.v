module top_level;

	wire [3:0] BCDu, BCDt, BCDh;
	wire CLOCK, CLR;
	three_BCD_test tbt(BCDu, BCDt, BCDh, CLOCK, CLR);
	three_BCD tb(BCDu, BCDt, BCDh, CLOCK, CLR);

endmodule 