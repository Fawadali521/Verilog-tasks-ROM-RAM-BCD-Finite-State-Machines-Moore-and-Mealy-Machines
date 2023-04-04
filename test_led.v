module test_led();
 reg [0:7] in;
 wire [0:7] out;
 led test(in, out);
 initial
 begin
 $display ("in = 0, out = led on");
 #10 in = 8'b00000001;
 #15 in = 8'b00001111;
 #20 in = 8'b11110000;
 #30 in = 8'b00110011;
 end
 initial
 $monitor ("%b %b", in     ,    out);
endmodule