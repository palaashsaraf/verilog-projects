module mux_4to1 (
	input wire i0,
	input wire i1,
	input wire i2,
	input wire i3,
	input wire s0,
	input wire s1,
	output wire y
);
	
	assign y = (i0 & ~s1 & ~s0) | (i1 & ~s1 & s0) | (i2 & s1 & ~s0) | (i3 & s1 & s0);

endmodule
