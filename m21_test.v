module mux21_test();
 reg [0:1] I;
 reg Sel;
 wire OUT;
 mux21 m(OUT, I, Sel);
 initial
 begin
 $display ("Sel I[0] I[1] OUT");
 #5 I = 2'b01;
 #10 Sel = 1'b0;
 #30 Sel = 1'b1;
 end
 initial
 $monitor ("%b  %b %b",Sel,I,OUT);
endmodule