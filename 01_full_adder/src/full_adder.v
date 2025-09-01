module full_adder (
	input wire a,
	input wire b,
	input wire c_in,
	output wire sum,
	output wire c_out
);

	assign sum = a ^ b ^ c_in;
	assign c_out = (a & b) | (b & c_in) | (c_in & a);

endmodule
