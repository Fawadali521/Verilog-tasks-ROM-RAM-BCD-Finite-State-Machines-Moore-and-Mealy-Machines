module mux21 (OUT, I, Sel);
	
	output OUT;
	input [0:1] I;
	input Sel;
	assign OUT = Sel ? I[1] : I[0];
endmodule
