module BCD (Q, CLOCK, CLR);
	output [3:0] Q; // BCD output
	input CLOCK, CLR; //clock and reset is input
	reg [3:0] Q;
	always @ (negedge CLOCK)  // run with negative of clock
		if (CLR | Q == 4'd9) // CLR is zero Or Q is 9 To run these statement 
			Q = 4'd0;  // set Q is zero
		else
			Q = Q + 1; //increment Q by one decimal
endmodule