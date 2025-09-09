module param_mux #(
	parameter IP_WIDTH = 2
) (
	input wire [IP_WIDTH-1:0] i,
	input wire [$clog2(IP_WIDTH)-1:0] s,
	output reg y
);
	integer j;

	always @(*) begin
		y = 1'b0;
		for (j = 0; j < IP_WIDTH; j = j + 1) begin
			if (s == j)
				y = i[j];
		end
	end

endmodule
