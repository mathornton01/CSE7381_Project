module divider(N,D,Q,ck,start,finished)

input ck, start; 
input [31:0] N, D; 
output [31:0] Q; 
output finished; 

wire [31:0] Np, Dp; 
wire sign;
reg [31:0] Nc, Dc, Q; 
reg [31:0] count;

absVal u1(N, D, Np, Dp, sign); 

wire negative; 

initial 
begin
assign negative = 0; 
assign Nc = Np; 
assign Dc = Dp;
assign count = 0;
end

always @(!negative)
begin 
assign Nc = Nc - Dc;
assign negative = Nc[31]; 
if (!negative)
assign count = count + 1; 
else 
assign Q = count; 
assign finished = 1;
end

if (sign)
	assign Q = ~Q + 1; 
endmodule


