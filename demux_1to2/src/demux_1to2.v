`timescale 1ns/1ps

module demux_1to2 (
	input wire i,
	input wire sel,
	output wire y0,
	output wire y1
);

	assign y0 = i & ~sel;
	assign y1 = i & sel;

endmodule
