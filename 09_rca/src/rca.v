module rca #(
	parameter IP_WIDTH = 1
) (
	input wire [IP_WIDTH-1:0] a,
	input wire [IP_WIDTH-1:0] b,
	input wire c_in,
	output wire [IP_WIDTH-1:0] sum,
	output wire c_out
);

	wire [IP_WIDTH:0] c;
	assign c[0] = c_in;

	genvar i;
	generate
		for (i = 0; i < IP_WIDTH; i = i + 1) begin : FA_LOOP
			full_adder fa (
				.a(a[i]),
				.b(b[i]),
				.c_in(c[i]),
				.sum(sum[i]),
				.c_out(c[i+1])
			);
		end
	endgenerate

	assign c_out = c[IP_WIDTH];

endmodule
