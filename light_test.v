module light_test();
reg clk;
wire [2:0] light;
light x1(clk, light);

always 
#10 clk = ~clk;
initial 
begin
clk = 0;
$monitor ("clk = %b,light= %b",clk,light);
end
endmodule
