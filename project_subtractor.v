
module MIPSALU (ALUctl, A, B, out, Zero);
	input [3:0] ALUctl;		// ALU control signals
	input [31:0] A, B;		// ALU input values (operands)
	output [31:0] out;		// result of ALU operation
	reg [31:0] out;	
	output Zero;			// ZERO flag

		// ZERO flag set if ALU result is 0

	assign Zero = (out==0);

		// do if any change in ALUctl, A, B

	always @(ALUctl or A or B)
	begin
	   case (ALUctl)
		6:  ALUOut <= A - B;		// SUB
		default:  out<= 0;
	   endcase
	end
endmodule
