module absVal(A[31:0], B[31:0], N[31:0], D[31:0], signo); 
input [31:0] A, B; 
output N[31:0], D[31:0], signo; 
wire sign[1:0], Ai[31:0], Aii[31:0], Bi[31:0], Bii[31:0];

assign sign[1] = 0; 
assign sign[0] = 0; 

if (A[31] == 1)
	assign sign[0] = 1; 
if (B[31] == 1)
	assign sign[1] = 1;

 
assign signo = sign[1] ^ sign[0]; 
assign Ai = A ^ 32'b11111111111111111111111111111111; 
assign Aii = Ai + 1;
assign Bi = B ^ 32'b11111111111111111111111111111111; 
assign Bii = Bi + 1;

if (sign[0] == 0)
	assign N = A;
else  
	assign N = Aii;


if (sign[1] == 0)
	assign D = B;
else  
	assign D = Bii;

endmodule