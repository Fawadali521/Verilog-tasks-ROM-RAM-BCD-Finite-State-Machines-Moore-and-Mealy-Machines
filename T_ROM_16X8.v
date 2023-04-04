module tst_ROM_16x8;

	reg [4:0] addrb;
	wire [7:0] datab;
	reg read_en;
	
	ROM_16x8 rom (addrb, datab, read_en);
	
	initial begin
		#5 addrb =  0; 	//00 000
		#10 addrb = 7; 	//00 111
		#10 addrb = 8; 	//01 000
		#15 addrb = 15; 	//01 111
		
	end
	
	initial begin
		#3 read_en <= 1;
	end
endmodule




