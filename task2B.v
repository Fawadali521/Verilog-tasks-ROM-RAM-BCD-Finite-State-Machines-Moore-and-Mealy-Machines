module mux4x1(A,B,C,D,sel1,sel2,F);
input A,B,C,D,sel1,sel2;
output F;
wire nsel,nsel2,F1,F2,F3,F4;
not n1(nsel1,sel1);
not n2(nsel2,sel2);
and a1(F1,A,nsel1,nsel2);
and a2(F2,B,nsel1,sel2);
and a3(F3,C,sel1,nsel2);
and a4(F4,D,sel1,sel2);
or O1(F,F1,F2,F3,F4);
endmodule
