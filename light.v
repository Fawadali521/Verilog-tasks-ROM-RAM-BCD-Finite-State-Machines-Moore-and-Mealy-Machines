module light(clk, light);
input clk;
output reg [2:0]light;
parameter s1 =0,s2=1,s3=2;
parameter red=3'b100,green=3'b010,yellow=3'b001;
reg [1:0] state;

always @(posedge clk)
	case(state)
	s1: begin
	light<=yellow;
	state<=s2;
	end
	s2: begin
			light <= green;
			state <= s3;
		end
	s3: begin
			light <= red;
			state <= s1;
		end
	default : begin
			light <= red;
			state <= s1;
		end
	endcase
endmodule
	