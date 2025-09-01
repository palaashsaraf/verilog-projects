#!/bin/zsh

DIR=$1
NAME=${DIR#*_}

mkdir -p $DIR/src $DIR/tb $DIR/sim
cd $DIR

cat > src/$NAME.v <<EOF
module $NAME (

);

endmodule
EOF

cat > tb/tb_$NAME.v <<EOF
\`timescale 1ns/1ps

module tb_$NAME;

	$NAME dut (

	);

	initial begin
		\$dumpfile("sim/$NAME.vcd");
		\$dumpvars(0, tb_$NAME);



		\$finish;
	end

endmodule
EOF

cat > filelist.f <<EOF
src/$NAME.v
tb/tb_$NAME.v
EOF

cat > Makefile <<EOF
NAME=$NAME

compile:
	iverilog -o sim/$NAME.vvp -f filelist.f
	vvp sim/$NAME.vvp

plot:
	gtkwave sim/$NAME.vcd

clean:
	rm -f sim/$NAME.vvp sim/$NAME.vcd

.PHONY: compile plot clean
EOF

touch sim/.gitkeep
