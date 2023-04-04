module level_to_pulse(clk,rst,synin,out);
input clk, rst,synin;
output out;

parameter s0=0;
parameter s1=1;
reg state, next_state,out;

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
				if(synin==0)
				begin
					next_state=s0;
					out=0;
				end
				else
				begin
					next_state=s1;
					out=1;
				end
			end
			s1:
			begin
				if(synin==1)
				begin
					next_state=s1;
					out=0;
				end
				else
				begin
					next_state=s0;
					out=0;
				end
			end
		endcase
	end
	endmodule

