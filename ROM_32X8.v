module ROM_32x8 (addrb, datab, read_en);

	input [4:0] addrb;
	output [7:0] datab;
	input read_en;
	
	wire [3:0] OUT;
	
	Dec_24 d1 (addrb[4], addrb[3], OUT);
	
	ROM1_8x8 rc1 (OUT[0], addrb[2:0], datab, read_en);
	ROM2_8x8 rc2 (OUT[1], addrb[2:0], datab, read_en);
	ROM3_8x8 rc3 (OUT[2], addrb[2:0], datab, read_en);
	ROM4_8x8 rc4 (OUT[3], addrb[2:0], datab, read_en);
	
endmodule

module Dec_24 (A, B, OUT);

	input A, B;
	output [3:0] OUT;
	
	assign OUT[0] = ~A & ~B;
	assign OUT[1] = ~A & B;
	assign OUT[2] = A & ~B;
	assign OUT[3] = A & B;

endmodule


