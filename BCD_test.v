module bcd_test();
	reg [3:0] in;
	wire [6:0] out;
	bcd x1(in,out,dp,enable);
	initial 
	begin
	$display (" in= x3x2x1x0,  out = gfedcba");
	#10 in = 4'd0;
	#20 in = 4'd1;
	#30 in = 4'd2;
	#40 in = 4'd3;
	#50 in = 4'd4;
	#60 in = 4'd5;
	#70 in = 4'd6;
	#80 in = 4'd7;
	#90 in = 4'd8;
	#100 in = 4'd9;
	#110 in = 4'd10;
	end
	initial
	$monitor (" in= %b,  out = %b", in, out);

endmodule

	