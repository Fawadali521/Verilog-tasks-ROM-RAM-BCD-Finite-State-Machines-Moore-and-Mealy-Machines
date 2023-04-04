module quiz(a,b,c,z);
input a,b,c;
output z;
wire z1,z2,z3,f1,f2,f3,f4;
not n1(z1,a);
not n2(z2,b);
not n3(z3,c);
xnor a1(f1,a,b);
and a2(f2,f1,c);
and a3(f3,z1,z2,z3);
or a4(z,f2,f3);
endmodule