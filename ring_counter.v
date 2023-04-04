module ring_counter(clk,reset,out);
	input clk, reset;
	output reg [7:0] out;
    	 //wire clk1mhz;
	 //clock_divider c1(clk,reset,clk1mhz);
	 always @(posedge clk or negedge reset)
	 if (~reset)
	 out <= 8'b0000001;//initial state
	 else 
	 out <= {out[6:0],out[7]};// shift one bit

endmodule
