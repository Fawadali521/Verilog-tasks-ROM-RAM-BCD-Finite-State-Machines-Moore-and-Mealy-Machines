module mux4();
reg A,B,C,D,sel1,sel2;
wire F;
mux4x1 m1(A,B,C,D,sel1,sel2,F);
initial 
begin
#10
A = 1; B = 0; C = 0; D = 0; sel1 = 0; sel2 = 0;
#10
A = 0; B = 1; C = 0; D = 0; sel1 = 0; sel2 = 1;
#10
A = 0; B = 0; C = 1; D = 0; sel1 = 1; sel2 = 0;
#10
A = 0; B = 0; C = 0; D = 1; sel1 = 1; sel2 = 1;
end
initial 
begin
#2
$monitor ("A = %b B = %b C = %b D = %b sel1 = %b sel1 = %b F = %b",A,B,C,D,sel1,sel2,F);
end
endmodule