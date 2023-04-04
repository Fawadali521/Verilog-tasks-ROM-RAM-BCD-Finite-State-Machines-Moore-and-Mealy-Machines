module Top_de();

	wire CLK, RESET;
	wire [15:0] OUT_DATA;
	//module Combine_test(CLK,RESET,OUT_DATA);
	//module Combine(CLK, RESET, OUT_DATA);
	Combine_test x1(CLK,RESET,OUT_DATA);
	Combine x2(CLK, RESET, OUT_DATA);

endmodule