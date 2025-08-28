`timescale 1ns/1ps

module mux_2to1 (
	input wire i0,
	input wire i1,
	input wire sel,
	output wire y
);

	assign y = (i0 & ~sel) | (i1 & sel);

endmodule
