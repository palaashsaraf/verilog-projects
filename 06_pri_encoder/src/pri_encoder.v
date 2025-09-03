module pri_encoder # (
	parameter IP_WIDTH = 2,
	parameter OP_WIDTH = $clog2(IP_WIDTH)	
) (
	input wire en,
	input wire [IP_WIDTH-1:0] i,
	output reg [OP_WIDTH-1:0] y`
);

	integer j;

	always @(*) begin
		y = {(OP_WIDTH){1'b0}};

		if (en) begin
			for (j = 0; j < IP_WIDTH; j = j + 1) begin
				if (i[j])
					y = j;
			end
		end
	end

endmodule
