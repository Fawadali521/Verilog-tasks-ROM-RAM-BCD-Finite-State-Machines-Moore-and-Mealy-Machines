module counter_up (count, clk, rst);

	output [3:0] count;
	input clk, rst;
	
	reg [3:0] count;

	always @(posedge clk) // run this block by positive edge of clock
	begin
		if (~rst)
			count = 4'b0000;//reset counter
		else
			count = count + 1;	// increment counter by 1

	end

endmodule
