module Dec_4x16 (A, B, C, D, En, OUTPUT);
 input A,B,C,D,En;// 4 input if enable is zero the not work
 output [15:0] OUTPUT;//16 output it a time one bit is high
 
 	assign OUTPUT[0]=  (~A) & (~B) &(~C) & (~D) & (En);
 	assign OUTPUT[1]=  (~A) & (~B) &(~C) & (D) & (En);
 	assign OUTPUT[2]=  (~A) & (~B) &(C) & (~D) & (En);
 	assign OUTPUT[3]=  (~A) & (~B) &(C) & (D) & (En);
 	assign OUTPUT[4]=  (~A) & (B) &(~C) & (~D) & (En);
 	assign OUTPUT[5]=  (~A) & (B) &(~C) & (D) & (En);
 	assign OUTPUT[6]=  (~A) & (B) &(C) & (~D) & (En);
 	assign OUTPUT[7]=  (~A) & (B) &(C) & (D) & (En);
 	assign OUTPUT[8]=  (A) & (~B) &(~C) & (~D) & (En);
 	assign OUTPUT[9]=  (A) & (~B) &(~C) & (D) & (En);
 	assign OUTPUT[10]=  (A) & (~B) &(C) & (~D) & (En);
 	assign OUTPUT[11]=  (A) & (~B) &(C) & (D) & (En);
 	assign OUTPUT[12]=  (A) & (B) &(~C) & (~D) & (En);
 	assign OUTPUT[13]=  (A) & (B) &(~C) & (D) & (En);
 	assign OUTPUT[14]=  (A) & (B) &(C) & (~D) & (En);
 	assign OUTPUT[15]=  (A) & (B) &(C) & (D) & (En);

endmodule
