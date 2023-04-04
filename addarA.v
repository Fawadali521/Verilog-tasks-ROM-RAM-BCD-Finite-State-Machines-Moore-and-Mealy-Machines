module adder(A,B,C,F,G);
input A,B,C;
output F,G;
xor x1(F1,A,B);
xor x2(F,F1,C);
and a1(G1,A,B);
and a2(G2,F1,C);
or a3(G,G1,G2);
endmodule
