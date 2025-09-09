`timescale 1ns/1ps

module tb_decoder;

	parameter IP_WIDTH = 4;
	localparam OP_WIDTH = (1 << IP_WIDTH);

	reg en;
	reg [IP_WIDTH-1:0] i;
	wire [OP_WIDTH-1:0] y;
	integer j;

	decoder #(
		.IP_WIDTH(IP_WIDTH)
	) dut (
		.en(en),
		.i(i),
		.y(y)
	);

	initial begin
		$dumpfile("sim/decoder.vcd");
		$dumpvars(0);

		i = {IP_WIDTH{1'b0}};

		en = 0;
		for (j = 0; j < (1 << IP_WIDTH); j = j + 1) begin
			i = j[IP_WIDTH-1:0];

			#10;
		end

		en = 1;
		for (j = 0; j < (1 << IP_WIDTH); j = j + 1) begin
			i = j[IP_WIDTH-1:0];

			#10;
		end

		$finish;
	end

endmodule
