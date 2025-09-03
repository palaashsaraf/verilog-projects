module decoder # (
	parameter IP_WIDTH = 1,
	parameter OP_WIDTH = (1 << IP_WIDTH)
) (
	input wire en,
	input wire [IP_WIDTH-1:0] i,
	output reg [OP_WIDTH-1:0] y
);

	integer j;

	always @(*) begin
		y = {(OP_WIDTH){1'b0}};

		if (en) begin
			for (j = 0; j < OP_WIDTH; j = j + 1) begin
				if (j == i)
					y[j] = 1;
			end
		end
	end

endmodule
