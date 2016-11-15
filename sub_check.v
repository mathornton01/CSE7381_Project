module sub_check (A, B, Ao, Bo, Sign)

input [31:0] A; 
input [31:0] B; 

output [31:0] Ao,Bo; 
output [1:0] Sign; 

wire [31:0] C; 

assign C = A - B; 

if (C[31] == 1)
assign sign = 1; 

endmodule