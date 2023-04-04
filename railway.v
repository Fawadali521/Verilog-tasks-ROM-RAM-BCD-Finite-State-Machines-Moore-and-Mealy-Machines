module railway(reset, clk, rail_detect,gate,light,state);
	input reset, rail_detect, clk;
	output reg [1:0]gate;
	output reg [2:0] light;
	output reg [1:0] state;
	reg [1:0] next_state;
	parameter RED = 3'b100,GREEN = 3'b001,YELLOW = 3'b010;
	parameter s0=0,s1=1,s2=2,s3=3;
	always @(posedge clk)
		if(reset)
			begin
				state = s0;
				light =GREEN ;
				gate = 0;
			end
		else
			state = next_state;
		always @(*) begin
			case(state)
				s0://sate 0
					begin
					if(rail_detect == 1)
						begin
						next_state = s1;//state 1
						light =GREEN ;
						gate = 0;
						end
					else
						begin
						next_state = s0;//state 0
						light = GREEN;
						gate = 0;
						end
					end
				s1://state 1
					begin
						light = YELLOW;
						next_state = s2;//state 2
						gate = 0;
					end
				s2://state 2
					begin
						light = RED;
						next_state = s3;//state 3
						gate = 3;
					end
				s3://state 3
					begin
						light = YELLOW;
						next_state = s0;
						gate = 3;
					end
			endcase
			end
endmodule