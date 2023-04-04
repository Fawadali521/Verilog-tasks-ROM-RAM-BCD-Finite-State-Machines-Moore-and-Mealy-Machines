module led(in, out);
	input [0:7] in;// input in dip switch
	output [0:7] out; // output in led
	assign out = in;
endmodule