
module test_alu;
	
	reg [31:0] A, B;
	wire [31:0] out;
	wire Zero;
	MIPSALU u1(ALUctl, A, B, ALUOut, Zero);

	initial
	begin
	   ALUctl = 4'h0;	// start with AND, A = 0, B = 0
	   A = 32'h0;
	   B = 32'h0;
	end

	initial
	begin
	   #2 ALUctl = 4'h6; A = 32'hD; B = 32'h6; //d - 6 = 7
	   #2 A = 32'hf; B = 32'h2; //f - 2 = d
	   #2 A = 32'h1; B = 32'h2; //1 - 2 = -1
	   
	end

	initial $monitor($time, " Zero=%b ALUct1=%d A=%h B=%h ALUOut=%h",
		    Zero, ALUctl, A, B, ALUOut);
	initial #50 $stop;

endmodule



	
