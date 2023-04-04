module railway_test();

	reg reset, rail_detect, clk;
	wire [1:0]gate;
	wire [2:0] light;
	wire [1:0] state;
	railway x1(reset, clk, rail_detect,gate,light,state);
	initial	begin
	clk = 0;
	#10rail_detect = 1;
	#10reset = 1;
	#20 reset = 0;
	#20 rail_detect = 1;
	end
	always 
	#10 clk = ~clk;
	initial 
	begin
	$monitor ("clk = %b,state= %b,light= %b, gate= %b",clk,state,light,gate);
	end

endmodule
