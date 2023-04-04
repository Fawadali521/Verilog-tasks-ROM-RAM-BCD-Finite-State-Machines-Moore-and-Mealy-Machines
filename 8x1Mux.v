module mux8x1(A,B,C,D,E,F,G,H,sel1,sel2,sel3,Z);
input A,B,C,D,E,F,G,H,sel1,sel2,sel3;
output Z;
wire nsel1,nsel2,nsel3,F1,F2,F3,F4,F5,F6,F7,F8;
not n1(nsel1,sel1);
not n2(nsel2,sel2);
not n3(nsel3,sel3);
and a1(F1,A,sel1,sel2,sel3);
and a2(F2,B,sel1,nsel2,nsel3);
and a3(F3,C,sel1,nsel2,nsel3);
and a4(F4,D,sel1,nsel2,nsel3);
and a5(F5,E,nsel1,sel2,sel3);
and a6(F6,F,nsel1,sel2,nsel3);
and a7(F7,G,nsel1,nsel2,sel3);
and a8(F8,H,nsel1,nsel2,nsel3);
or o1(Z,F1,F2,F3,F4,F5,F6,F7,F8);
endmodule