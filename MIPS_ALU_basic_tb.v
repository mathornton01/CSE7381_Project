// ============================================================
// MIPS_ALU_basic_tb.v
// T. Manikas	2015 Aug 3
//
// testbench for MIPS_ALU_basic
// ============================================================

module test_alu;
	reg [3:0] ALUctl;
	reg [31:0] A, B;
	wire [31:0] ALUOut;
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
	   #2 A = 32'hC; B = 32'h4;	// C and 4 = 4
	   #2 A = 32'hF; B = 32'h6;	// F and 6 = 6
	   #2 ALUctl = 4'h7;		// F < 6? should be false
	   #2 A = 32'h1;		// 1 < 6? should be true
	end

	initial $monitor($time, " Zero=%b ALUctl=%d A=%h B=%h ALUOut=%h",
			Zero, ALUctl, A, B, ALUOut);
	initial #50 $stop;

endmodule

	