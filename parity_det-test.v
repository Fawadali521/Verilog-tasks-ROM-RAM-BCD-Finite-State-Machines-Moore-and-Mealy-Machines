module tst_parity_det;

	reg x, clk;
	wire z;
	

	parity_det pd (x, clk, z);
	
	initial	begin
		clk = 0;
		
		forever begin
			#10 clk = ~clk;
			#3 clk = ~clk;
		end
	end
	
	initial
		repeat (10) @(posedge clk)
		 	x = $random;
		
endmodule

