module absVal_tb;
	reg [31:0] A1, B1;
	wire [31:0] N1,D1;
	wire signo;
	absVal u1(A1, B1, N1, D1, signo);

	initial
	begin
	   A1 = 32'h0;
	   B1 = 32'h0;
	end

	initial
	begin
	   #2 A1 = 32'hC; B1 = 32'h4;	// C and 4 = 4
	   #2 A1 = 32'hF; B1 = 32'h6;	// F and 6 = 6
	end

	initial $monitor($time, " signo=%b A=%h B=%h N=%h D=%h",
			, signo, A1, B1, N1, D1);
	initial #50 $stop;

endmodule
