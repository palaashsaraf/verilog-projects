`timescale 1ns/1ps

module tb_comparator;

	parameter IP_WIDTH = 1;
	parameter IS_SIGNED = 0;

	reg [IP_WIDTH-1:0] a;
	reg [IP_WIDTH-1:0] b;
	wire gt;
	wire lt;
	wire eq;

	integer i;
	integer j;

	comparator #(
		.IP_WIDTH(IP_WIDTH),
		.IS_SIGNED(IS_SIGNED)
	) dut (
		.a(a),
		.b(b),
		.gt(gt),
		.lt(lt),
		.eq(eq)
	);

	initial begin
		$dumpfile("sim/comparator.vcd");
		$dumpvars(0);

		a = {IP_WIDTH{1'b0}};
		b = {IP_WIDTH{1'b0}};

		if (!IS_SIGNED) begin
			for (i = 0; i < (1 << IP_WIDTH); i = i + 1) begin
				for (j = 0; j < (1 << IP_WIDTH); j = j + 1) begin
					a = i[IP_WIDTH-1:0];
					b = j[IP_WIDTH-1:0];

					#10;
				end
			end
		end
		else begin
			for (i = -(1 << (IP_WIDTH - 1)); i < (1 << (IP_WIDTH - 1)); i = i + 1) begin
				for (j = -(1 << (IP_WIDTH - 1)); j < (1 << (IP_WIDTH - 1)); j = j + 1) begin
					a = i[IP_WIDTH-1:0];
					b = j[IP_WIDTH-1:0];

					#10;
				end
			end
		end

		$finish;
	end

endmodule
