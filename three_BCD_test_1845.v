module three_BCD_test (BCDu, BCDt, BCDh, CLOCK, CLR);
	input [3:0] BCDu, BCDt, BCDh;
	output CLOCK, CLR;
	reg CLOCK, CLR;
	always
		#2 CLOCK = ~CLOCK;//toggle
	initial
	begin
		CLR = 1'b1;  // clear BCD
		CLOCK = 1'b1;
		#4 CLR = 1'b0;
	end
	// monitor the outputs
	initial
		$monitor(" CLR= %b,  BCDh= %d, BCDt= %d, BCDu= %d",CLR, BCDh, BCDt, BCDu);
endmodule