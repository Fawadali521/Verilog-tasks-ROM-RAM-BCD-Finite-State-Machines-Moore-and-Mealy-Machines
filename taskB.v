module stim9();
reg a,b,c;
wire z;
quiz m2(a,b,c,z);
initial 
begin
$display("A,  B,  C, Z");
a = 0; b = 0;c = 0;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 0; b = 0;c = 1;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 0; b = 1;c = 0;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 0; b = 1;c = 1;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 1; b = 0;c = 0;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 1; b = 0;c = 1;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 1; b = 1;c = 0;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
#10
a = 1; b = 1;c = 1;
#10
$display("%b		%b	%b	%b    ",a,b,c,z);
end 
endmodule
