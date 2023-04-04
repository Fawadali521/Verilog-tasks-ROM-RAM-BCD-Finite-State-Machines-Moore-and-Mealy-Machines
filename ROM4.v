module ROM4_8x8 (cs, addrb, datab, read_en);

	input [2:0] addrb;
	output [7:0] datab;
	input read_en, cs;
	
	reg [7:0] datab;
	
	always @ (*)
		if (read_en & cs)
			case (addrb)
				0: datab = 1;
				1: datab = 2;
				2: datab = 3;
				3: datab = 4;
				4: datab = 5;
				5: datab = 6;
				6: datab = 7;
				7: datab = 111;
			endcase
		else
			datab = 8'bz;
		
endmodule


