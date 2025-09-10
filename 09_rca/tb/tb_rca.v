`timescale 1ns/1ps

module tb_rca;

	parameter IP_WIDTH = 4;
	reg [IP_WIDTH-1:0] a;
	reg [IP_WIDTH-1:0] b;
	reg c_in;
	wire [IP_WIDTH-1:0] sum;
	wire c_out;

	integer i;
	integer j;

	rca #(
		.IP_WIDTH(IP_WIDTH)
	) dut (
		.a(a),
		.b(b),
		.c_in(c_in),
		.sum(sum),
		.c_out(c_out)
	);

	initial begin
		$dumpfile("sim/rca.vcd");
		$dumpvars(0);

		c_in = 0;
		for (i = 0; i < (1 << IP_WIDTH); i = i + 1) begin
			for (j = 0; j < (1 << IP_WIDTH); j = j + 1) begin
				a = i[IP_WIDTH-1:0];
				b = j[IP_WIDTH-1:0];

				#10;
			end
		end

		c_in = 1;
		for (i = 0; i < (1 << IP_WIDTH); i = i + 1) begin
			for (j = 0; j < (1 << IP_WIDTH); j = j + 1) begin
				a = i[IP_WIDTH-1:0];
				b = j[IP_WIDTH-1:0];

				#10;
			end
		end

		$finish;
	end

endmodule
