module LOCK (in,rst,clk,openlock,alarm);
	
	input in,rst,clk;
	output openlock,alarm;
	reg openlock,alarm;

	parameter A = 0, B = 1, C = 2, D = 3;
	reg [1:0] PS, NS;

	always @(posedge clk, rst)
		if (rst)
		begin
			PS <= A;
		end	
		else
			PS <= NS;
	always @(PS or in)
		case (PS)
			A: 
			if (in)
			 begin
			    openlock = 0;
			    alarm = 1;
		  	    NS = A;
		  	 end
			else
			 begin
			    openlock = 0;
			    alarm = 0;
		  	    NS = B;
		  	 end
			B: 
			if (in)
			 begin
			    openlock = 0;
			    alarm = 0;
		  	    NS = C;
		  	 end
			else
			 begin
			    openlock = 0;
			    alarm = 1;
		  	    NS = A;
		  	 end
			
			C: 
			if (in)
			
			 begin
			    openlock = 0;
			    alarm = 1;
		  	    NS = A;
		  	 end
			
			else
			
			 begin
			    openlock = 1;
			    alarm = 0;
		  	    NS = D;
		  	 end
			
			D: 
			if (in)
			
			 begin
			    openlock = 0;
			    alarm = 0;
		  	    NS = A;
		  	 end
			else if (~in)
			 begin
			    openlock = 0;
			    alarm = 0;
		  	    NS = A;
		  	 end
		  	 else
			 begin
			    openlock = 1;
			    alarm = 0;
		  	    NS = D;
		  	 end
				
		endcase

endmodule