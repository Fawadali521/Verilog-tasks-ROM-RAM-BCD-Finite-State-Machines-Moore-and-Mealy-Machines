module parity_det_mealy (x, rst, clk, z);

	input x, rst, clk;
	output z; reg z;
	
	reg PS, NS;
	
	parameter EVEN = 0, ODD = 1;
	
	always @(posedge clk or rst)
		if (rst)
			PS <= EVEN;
		else
			PS <= NS;		
	
	always @(PS or x)
		case (PS) 
			EVEN: begin
				z = x? 1:0;
				NS = x? ODD:EVEN;
			end
			ODD: begin
				z = x? 0:1;
				NS = x? EVEN:ODD;
			end		
		endcase

endmodule

