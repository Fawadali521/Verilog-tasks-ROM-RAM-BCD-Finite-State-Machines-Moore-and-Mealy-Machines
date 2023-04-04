module BCDs(in,out);
input[3:0] in;
output [6:0] out;
 assign out = (in==4'd0)?7'b1000000:(in==4'd1)?7'b1111001:(in==4'd2)?7'b0100100:
			(in==4'd3)?7'b0110000:
			(in==4'd4)?7'b0011001:
			(in==4'd5)?7'b0010010:
			(in==4'd6)?7'b0000010:
			(in==4'd7)?7'b1111000:
			(in==4'd8)?7'b0000000://
			(in==4'd9)?7'b0010000:7'b1111111;//the input check in assign the 7segment to display these number in 7 segment

endmodule

