module Combine_test(CLK,RESET,OUT_DATA);
	output CLK,RESET;
	input [15:0] OUT_DATA;
	reg CLK,RESET;
	always 
		#5 CLK=~CLK;
	initial 
	begin
		CLK=1'b0;
		RESET =  1'b0;
		#10 RESET = 1'b1; 
	end
	initial
	$monitor($time,"RESET = %b OUT_DATA = %b",RESET,OUT_DATA);
endmodule