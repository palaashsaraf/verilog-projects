module comparator #(
	parameter IP_WIDTH = 1,
	parameter IS_SIGNED = 0
) (
	input wire [IP_WIDTH-1:0] a,
	input wire [IP_WIDTH-1:0] b,
	output reg gt,
	output reg lt,
	output reg eq
);

	wire eq_internal = (a == b);

	always @(*) begin
		eq = eq_internal;
		gt = 1'b0;
		lt = 1'b0;

		if (!eq_internal) begin
			if (!IS_SIGNED) begin
				gt = (a > b);
				lt = (a < b);
			end
			else begin
				if (a[IP_WIDTH-1] ^ b[IP_WIDTH-1]) begin
					gt = ~a[IP_WIDTH-1];
					lt = a[IP_WIDTH-1];
				end
				else begin
					gt = (a > b);
					lt = (a < b);
				end
			end
		end
	end

endmodule
