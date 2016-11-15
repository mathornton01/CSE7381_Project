// ============================================================
// MIPS_ALU_basic.v
// T. Manikas	2015 Aug 3
//
//
// basic ALU (Arithmetic-Logic Unit) for MIPS processor
// ============================================================

module MIPSALU (ALUctl, A, B, ALUOut, Zero);
	input [3:0] ALUctl;		// ALU control signals
	input [31:0] A, B;		// ALU input values (operands)
	output [31:0] ALUOut;		// result of ALU operation
	reg [31:0] ALUOut;	
	output Zero;			// ZERO flag

		// ZERO flag set if ALU result is 0

	assign Zero = (ALUOut==0);

		// do if any change in ALUctl, A, B

	always @(ALUctl or A or B)
	begin
	   case (ALUctl)
		0:  ALUOut <= A & B;		// bitwise AND
		7:  ALUOut <= A < B ? 1 : 0;	// set if A < B
		default:  ALUOut <= 0;
	   endcase
	end
endmodule

