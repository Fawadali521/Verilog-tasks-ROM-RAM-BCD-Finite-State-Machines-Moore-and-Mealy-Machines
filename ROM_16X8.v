module ROM_16x8 (addrb, datab, read_en);

	input [3:0] addrb;
	output [7:0] datab;
	input read_en;
	
	
	ROM1_8x8 rc1 (~addrb[3], addrb[2:0], datab, read_en);
	ROM2_8x8 rc2 (addrb[3], addrb[2:0], datab, read_en);
	
endmodule




