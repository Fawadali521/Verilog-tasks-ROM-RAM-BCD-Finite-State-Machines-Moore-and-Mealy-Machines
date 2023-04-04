module parity_det_moore (x, rst, clk, z);

	input x, rst, clk;
	output z; reg z;
	
	reg PS, NS;
	
	parameter EVEN = 0, ODD = 1;
	
	always @(posedge clk or rst)
		if (rst)
			PS <= EVEN;
		else
			PS <= NS;		
	always @(PS)
		case (PS)
			EVEN: z = EVEN;
			ODD:  z = ODD;
		endcase

	always @(PS or x)
		case (PS)
			EVEN: NS = x? ODD:EVEN;
			ODD:NS = x? EVEN:ODD;		
		endcase

endmodule


