module RCA (input [31:0] A, B, input Cin, output [32:0] Sum);
 
	wire [32:0] C;
      assign   Sum[0]=(A[0] ^ B[0] ^ Cin);
		assign	C[1]=((A[0] & B[0]) | (B[0] & Cin) | (Cin & A[0]));
 
 genvar i;
 generate
	for(i=1; i<32; i=i+1) 
		begin : g
			assign Sum[i]=A[i] ^ B[i] ^ C[i];
			assign C[i+1]=(A[i] & B[i]) | (B[i] & C[i]) | (C[i] & A[i]);
		end
	endgenerate

	
		assign Sum[32]=C[32];
 
endmodule
