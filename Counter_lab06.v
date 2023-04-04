module counter9(count7seg, rst,clk,en);
	 output [6:0]count7seg;
	 reg [3:0] count;
	 input rst,clk;
	 output en;
	 
	 assign en=0;
	 
	 BCD b1(count,count7seg);
	 
	 always@(posedge clk)//run thse block when the positive edge of clock
	 begin
		if(rst) // reset is high the count reset
			count = 0;
		else
			begin
				count = count + 1'b1;
				if(count == 10)
				count = 0;
				end
		end
	// monitor the outputs
	initial
	$monitor($time, ", rst = %b, count = %b count7seg =%b", rst, count, count7seg);
endmodule

