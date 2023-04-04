module stim5();
reg A,B,C,D,sel1,sel2;
wire F;
mux4x1 m1(A,B,C,D,sel1,sel2,F);
initial 
begin
#1
$display("A,		B,   C,  D,	Sel1,  sel2, 	F");
#1
A = 1; B = 0; C = 0; D = 0; sel1 = 0; sel2 = 0;
#1
$display("%b		%b	%b	%b  %b  %b %b ",A,B,C,D,sel1,sel2,F);
#1
A = 0; B = 1; C = 0; D = 0; sel1 = 0; sel2 = 1;
#1
$display("%b		%b	%b	%b  %b  %b %b",A,B,C,D,sel1,sel2,F);
#1
A = 0; B = 0; C = 1; D = 0; sel1 = 1; sel2 = 0;
#1
$display("%b		%b	%b	%b  %b  %b %b",A,B,C,D,sel1,sel2,F);
#1
A = 0; B = 0; C = 0; D = 1; sel1 = 1; sel2 = 1;
#1
$display("%b		%b	%b	%b  %b  %b %b",A,B,C,D,sel1,sel2,F);
end
endmodule

