module tst_parity_rst;

	reg x, rst, clk;
	wire z;
	
	parity_det_1always pd (x, rst, clk, z);
	
	initial	begin
		clk = 0;
		x = 0;
		#10 x = 1;
		#20 x = 0;
		#20 x = 1;
		#20 x = 0;
		#20 x = 1;
	end

	initial	begin
		rst = 1;
		#10 rst = 0;	
	end			
	
	always 
		#10 clk = ~clk;	
		
endmodule

