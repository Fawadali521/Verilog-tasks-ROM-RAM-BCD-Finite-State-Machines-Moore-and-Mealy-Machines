module swith();
reg clk, rst, in;
wire out;
//level_to_pulse pulse(clk,rst,in,out);
light_switch switch(clk,rst,in,out,pulse);

always
begin
  	
    #5 clk = ~clk;
    end
    always
    #20 in =~in;
initial 
 begin 
 clk =1;
 rst = 1;
 in = 1;
 #10 rst =0;
 end
 endmodule