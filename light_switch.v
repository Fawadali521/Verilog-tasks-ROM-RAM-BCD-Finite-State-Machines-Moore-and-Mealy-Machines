module light_switch(clk,rst,in,out,pulse);
output pulse;
input clk,rst,in;
output reg out;
wire synin,pulse;

synchron ss1(in,clk,rst,synin);
level_to_pulse level(clk,rst,synin,pulse);

parameter s0=0;
parameter s1=1;
reg state, next_state;

always @(posedge clk)
	begin
		if(rst)
			begin
				state=s0;
			end
		else
				state=next_state;
	end
always @(*)
	begin
		case(state)
			s0:
				begin
					if(pulse==0)
						begin
							next_state = s0;
							out = 0;
						end
					else
						begin
							next_state = s1;
							out = 1;
						end
				end
			s1:
				begin
					if(pulse==1)
						begin
							next_state = s0;
							out = 0;
						end
					else
						begin
							next_state = s1;
							out = 1;
						end
				end
		endcase
	end
	initial 
	$monitor ("clock = %b, in = %b,  reset = %b,   pulse = %b, out= %b",clk,  in, rst, out, pulse);

endmodule

