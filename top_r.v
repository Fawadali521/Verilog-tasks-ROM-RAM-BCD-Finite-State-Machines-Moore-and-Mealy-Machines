module top_rc;

	wire clk, reset;
	wire [7:0] out;

	ring_counter rc(clk,reset,out);
	test_r t_rc (clk, reset, out);

endmodule
