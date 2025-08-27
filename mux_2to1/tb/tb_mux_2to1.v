`timescale 1ns/1ps

module tb_mux_2to1;

	reg i0, i1, sel;
	wire y;

	mux_2to1 dut (
		.i0(i0),
		.i1(i1),
		.sel(sel),
		.y(y)
	);

	initial begin
		$dumpfile("sim/mux_2to1.vcd");
		$dumpvars(0, tb_mux_2to1);

		i0 = 0; i1 = 0; sel = 0; #10
		i0 = 0; i1 = 0; sel = 1; #10
		i0 = 0; i1 = 1; sel = 0; #10
		i0 = 0; i1 = 1; sel = 1; #10
		i0 = 1; i1 = 0; sel = 0; #10
		i0 = 1; i1 = 0; sel = 1; #10
		i0 = 1; i1 = 1; sel = 0; #10
		i0 = 1; i1 = 1; sel = 1; #10

		$finish;
	end

endmodule
