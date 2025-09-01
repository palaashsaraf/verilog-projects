`timescale 1ns/1ps

module tb_param_mux;

	parameter IP_WIDTH = 8;
	localparam OP_WIDTH = $clog2(N);

	reg [IP_WIDTH-1:0] i;
	reg [OP_WIDTH-1:0] s;
	wire y;
	integer d, sel;

	param_mux # (
		.IP_WIDTH(IP_WIDTH)
	) dut (
		.i(i),
		.s(s),
		.y(y)
	);

	initial begin
		$dumpfile("sim/param_mux.vcd");
		$dumpvars(0);

		for (d = 0; d < (1 << IP_WIDTH); d = d + 1) begin
			i = d[IP_WIDTH-1:0];
			for (sel = 0; sel < IP_WIDTH; sel = sel + 1) begin
				s = sel[OP_WIDTH-1:0];

				#10;
			end
		end

		$finish;
	end

endmodule
