`timescale 1ns/1ps

module param_mux # (
	parameter N = 2
) (
	input wire [N - 1:0] i,
	input wire [$clog2(N) - 1:0] s,
	output reg y
);
	integer j;

	always @(*) begin
		y = 1'b0;
		for (j = 0; j < N; j = j + 1) begin
			if (s == j)
				y = i[j];
		end
	end

endmodule
