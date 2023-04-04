module decoder2x4(A,B,F1,F2,F3,F4);
input A,B;
output F1,F2,F3,F4;
wire nA, nB;
not n1(nA,A);
not n2(nB,B);
and a1(F1,nA,nB);
and a2(F2,nA,B);
and a3(F3,A,nB);
and a4(F4,A,B);
endmodule
