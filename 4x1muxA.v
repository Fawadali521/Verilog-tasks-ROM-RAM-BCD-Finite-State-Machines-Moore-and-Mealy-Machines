module mux4x1(A,B,C,D,sel1,sel2,F);
input A,B,C,D,sel1,sel2;
output F;
assign F = sel1 ? (sel1 ? D:C) : (sel2 ? B:C);
endmodule
