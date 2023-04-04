module stim();
reg A, B;
wire F1,F2,F3,F4;
decoder2x4 tr(A,B,F1,F2,F3,F4);
initial
begin
$display ("A,B,F1,F2,F3,F4");
#1
A=0;
B=0;
#1
$display ("%b %b %b %b %b %b",A,B,F1,F2,F3,F4);
#1
A=0;
B=1;
#1
$display ("%b %b %b %b %b %b",A,B,F1,F2,F3,F4);
#1
A=1;
B=0;
#1
$display ("%b %b %b %b %b %b",A,B,F1,F2,F3,F4);
#1
A=1;
B=1;
#1
$display ("%b %b %b %b %b %b",A,B,F1,F2,F3,F4);
end
endmodule
