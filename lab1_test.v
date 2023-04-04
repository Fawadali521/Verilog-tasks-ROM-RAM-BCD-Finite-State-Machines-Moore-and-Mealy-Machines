module test; 
reg a; 
wire b; 
buffer x2(a,b); 
initial 
begin 
a=1; 
#10
$display("%b %b ",a,b); 
#10 
a=0; 
$display("%b %b ",a,b); 
end 
endmodule 