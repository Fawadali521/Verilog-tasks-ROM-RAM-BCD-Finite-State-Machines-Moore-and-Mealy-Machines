module part(x,o,a,b,c);
input a,b,c;
output x,o;
wire bx;
not x1(bx,b);
and x2(x,bx,a);
or x3(o,x,c);
endmodule
