`timescale 1ns/1ps

module tb_mux_4to1;

	reg i0, i1, i2, i3;
	reg s0, s1;
	wire y;
	integer d, s;

	mux_4to1 dut (
		.i0(i0),
		.i1(i1),
		.i2(i2),
		.i3(i3),
		.s0(s0),
		.s1(s1),
		.y(y)
	);

	initial begin
		$dumpfile("sim/mux_4to1.vcd");
		$dumpvars(0);
		
		for (d = 0; d < 16; d = d + 1) begin
			{i3, i2, i1, i0} = d[3:0];
			for (s = 0; s < 4; s = s + 1) begin
				{s1, s0} = s[1:0];

				#10;
			end
		end

		$finish;
	end

endmodule
