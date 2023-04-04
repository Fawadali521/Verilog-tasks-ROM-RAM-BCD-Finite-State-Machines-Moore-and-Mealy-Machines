module tst_ROM_v1;

	reg [2:0] addrb;
	wire [7:0] datab;
	reg read_en, cs;
	
	ROM_v1 rom1 (cs, addrb, datab, read_en);
	
	initial begin
		#0 addrb = 2;
		#10 addrb = 5;
		#10 addrb = 3;
		#5 addrb = 7;
	end
	initial begin
		#3 cs <= 1;
	end
	initial begin
		#3 read_en <= 1;
	end

endmodule

