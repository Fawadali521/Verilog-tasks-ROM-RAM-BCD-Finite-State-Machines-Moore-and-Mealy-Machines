module DFF (D,clock, reset, Q, Qn);

	output Q, Qn;
	input D, clock, reset;//active low reset , pasitive edge treger
	
	reg Q;

	always @(negedge clock or posedge reset)//negative edge treger
		if (reset == 1'b0)
			Q <= 0;
		else
			Q <= D;
		
	assign Qn = ~Q;// complement the output of Q
	
endmodule
