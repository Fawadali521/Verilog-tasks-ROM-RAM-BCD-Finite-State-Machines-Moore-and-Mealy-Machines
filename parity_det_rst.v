module parity_det_1always (x, rst, clk, z);
	
	input x, rst, clk;
	output z; reg z;
	
	reg even_odd;
	
	parameter EVEN = 0, ODD = 1;
	
	always @(posedge clk, rst)
		if (rst) begin
			even_odd <= EVEN;
			z <= 0;
		end
		else
			case (even_odd)
				EVEN: begin
					z <= x? 1:0;
					even_odd <= x? ODD:EVEN;
				end
				ODD: begin
					z <= x? 0:1;
					even_odd <= x? EVEN:ODD;
				end
			endcase

endmodule

