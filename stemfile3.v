module stim3();
reg A,B,C,D,E,F,G,H,sel1,sel2,sel3;
wire Z;
mux8x1 mmm(A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
initial 
begin
$display("A,  B,  C,  D,  E,  F,  G,  H,  SEL1,  SEL2,  SEL3,  Z");
#10
A = 1; B = 0;C = 0; D = 0;E = 0; F = 0;G = 0; H = 0;sel1 = 0; sel2 = 0;sel3 = 0;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
#10
A = 0; B = 1;C = 0; D = 0;E = 0; F = 0;G = 0; H = 0;sel1 = 0; sel2 = 0;sel3 = 1;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 1; D = 0;E = 0; F = 0;G = 0; H = 0;sel1 = 0; sel2 = 1;sel3 = 0;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 0; D = 1;E = 0; F = 0;G = 0; H = 0;sel1 = 0; sel2 = 1;sel3 = 1;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 0; D = 0;E = 1; F = 0;G = 0; H = 0;sel1 = 1; sel2 = 0;sel3 = 0;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 0; D = 0;E = 0; F = 1;G = 0; H = 0;sel1 = 1; sel2 = 0;sel3 = 1;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 0; D = 0;E = 0; F = 0;G = 1; H = 0;sel1 = 1; sel2 = 1;sel3 = 0;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
A = 0; B = 0;C = 0; D = 0;E = 0; F = 0;G = 0; H = 1;sel1 = 1; sel2 = 1;sel3 = 1;
#10
$display("%b		%b	%b	%b     %b		%b	%b	%b      %b		%b	%b	%b      ",A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
end 
endmodule



