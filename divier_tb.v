module divider_tb; 
	reg [31:0] A1, B1;
	wire [31:0] Q;
	wire ck, start, finished; 

	divider u1(A1, B1, Q, ck, start, finished);


	initial
	begin
	   A1 = 32'h0;
	   B1 = 32'h0;
	end

	always 
		#1 ck = !ck; 

	initial
	begin
	   #50 A1 = 32'hC; B1 = 32'h4; start = 1;	// C and 4 = 4
	   #1 start = 0;
	   #50 A1 = 32'hF; B1 = 32'h6;	start = 1;
	   #1 start = 0; // F and 6 = 6
	end

	initial $monitor($time, "A=%h B=%h Q=%h",
			 A1, B1, Q);
	initial #50 $stop;