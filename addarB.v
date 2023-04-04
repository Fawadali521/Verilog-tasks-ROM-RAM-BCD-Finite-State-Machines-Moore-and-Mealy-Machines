module add();
reg A,B,C;
wire F,G;
adder m1(A,B,C,D,F,G);
initial 
begin
$display( "A, B, C, F ,G");
#10
A = 0; B = 0; C = 1;
#10
$display( "%b, %b, %b, %b, %b",A,B,C,F,G);
#10
A = 0; B = 1; C = 1;
#10
$display( "%b, %b, %b, %b, %b",A,B,C,F,G);
#10
A = 1; B = 0; C = 0;
#10
$display( "%b, %b, %b, %b, %b",A,B,C,F,G);
#10
A = 1; B = 0; C = 1;
#10
$display( "%b, %b, %b, %b, %b",A,B,C,F,G);
end
endmodule