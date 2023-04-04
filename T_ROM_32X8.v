module tst_ROM_32x8;

	reg [4:0] addrb;
	wire [7:0] datab;
	reg read_en;
	
	ROM_32x8 rom (addrb, datab, read_en);
	
	initial begin
		#5 addrb =  0; 	//00 000
		#10 addrb = 7; 	//00 111
		#10 addrb = 8; 	//01 000
		#5 addrb = 15; 	//01 111
		#5 addrb = 24; 	//11 000
		#5 addrb = 31; 	//11 111
		#5 addrb = 20; 	//10 100
		#5 addrb = 21; 	//10 101
	end
	
	initial begin
		#3 read_en <= 1;
	end

endmodule



