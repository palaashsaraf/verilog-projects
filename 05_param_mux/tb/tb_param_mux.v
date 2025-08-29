`timescale 1ns/1ps

module tb_param_mux;

	parameter N = 8;

	reg [N-1:0] i;
	reg [$clog2(N)-1:0] s;
	wire y;
	integer d, sel;

	param_mux # (
		.N(N)
	) dut (
		.i(i),
		.s(s),
		.y(y)
	);

	initial begin
		$dumpfile("sim/param_mux.vcd");
		$dumpvars(0, tb_param_mux);

		for (d = 0; d < (1 << N); d = d + 1) begin
			i = d[N-1:0];
			for (sel = 0; sel < N; sel = sel + 1) begin
				s = sel[$clog2(N)-1:0];

				#10;
			end
		end

		$finish;
	end

endmodule
