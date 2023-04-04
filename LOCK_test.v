module LOCK_test();

//module moore_lock (in,rst,clk,openlock,alarm);

	reg in, rst, clk;
	wire openlock,alarm;
	
	LOCK lock1(in,rst,clk,openlock,alarm);
	
	initial	begin
		clk = 0;
		in = 1;
		#10 in = 1;
		#10 in = 0;
		#10 in = 1;
		#10 in = 1;
		#10 in = 0;
		#10 in = 0;
		#10 in = 0;
		#10 in = 1;
		#10 in = 0;
		#10 in = 0;
	end
	
	initial	begin		
		rst = 1;
		#10 rst = 0;			
	end			
	
	always 
		#10 clk = ~clk;	
	
		
endmodule

