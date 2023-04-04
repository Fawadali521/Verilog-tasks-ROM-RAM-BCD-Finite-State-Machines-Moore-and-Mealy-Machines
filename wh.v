module whole(y,x,a,b,c);
//module part(x,o,a,b,c);
input [2:0]a,b;
input c;
output [2:0]x;
output y;
wire [1:0]o;
part a1(x[0],o[0],a[0],b[0],c);
part a2(x[1],o[1],a[1],b[1],o[0]);
part a3(x[2],y,a[2],b[2],o[1]);
endmodule