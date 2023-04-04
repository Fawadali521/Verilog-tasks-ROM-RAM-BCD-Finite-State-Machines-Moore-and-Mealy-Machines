module synchron(in, clk, rst,synin);

	input in,clk,rst;
	output synin;

	wire out;

	D_FF ff1(out,in,clk,rst);
	D_FF ff2(synin,out,clk,rst);

endmodule

