module stimulusbcd();
	
	wire [6:0]count7seg;
	reg rst,clk;
	counter9 x1(count7seg, rst,clk,en);
	always
		#5 clk = ~clk; //toggle clk every 5 time units

	initial
	begin
		clk = 1'b0; 
		rst = 1'b1; 
		#20 rst = 1'b0;
	end

	

endmodule
		