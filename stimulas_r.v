module test_r (clock, reset, out);
		//module ring_counter(clk,reset,out);

	output clock, reset;
	output [7:0] out;
	reg clock;
	reg reset;
	always
		#5 clock = ~clock; //toggle clk every 5 time units

	initial
	begin
		clock = 1'b0; //set clk to 0		
		reset = 1'b0;
		#12
		reset = 1'b1;
		#200 $finish; //terminate the simulation
	end

	initial
		$monitor($time, ": Output = %b", out);//display output

endmodule



