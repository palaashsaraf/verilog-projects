`timescale 1ns/1ps

module tb_demux_1to2;

	reg i, sel;
	wire y0, y1;

	demux_1to2 dut (
		.i(i),
		.sel(sel),
		.y0(y0),
		.y1(y1)
	);

	initial begin
		$dumpfile("sim/demux_1to2.vcd");
		$dumpvars(0, tb_demux_1to2);

		i = 0; sel = 0; #10
		i = 1; sel = 0; #10
		i = 0; sel = 1; #10
		i = 1; sel = 1; #10

		$finish;
	end

endmodule
