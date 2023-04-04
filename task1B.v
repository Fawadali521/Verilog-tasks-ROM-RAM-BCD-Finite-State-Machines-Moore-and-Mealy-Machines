module stim4();
reg A,B,sel;
wire F;
mux2x1 m1(A,B,sel,F);
initial 
begin
#1
$display("A,		B,	Sel,	F");
#1
A = 0; B = 0;sel = 0;
#1
$display("%b	%b %b %b",A,B,sel,F);
#1
A = 0; B = 0; sel = 1;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 0; B = 1;sel = 0;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 0; B = 1;sel = 1;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 1; B = 0;sel = 0;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 1; B = 0;sel = 1;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 1; B = 1;sel = 0;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
#1
A = 1; B = 1;sel = 1;
#1
$display("%b		%b	%b	%b ",A,B,sel,F);
end
endmodule

