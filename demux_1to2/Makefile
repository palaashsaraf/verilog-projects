compile:
	iverilog -o sim/demux_1to2.vvp -f filelist.f
	vvp sim/demux_1to2.vvp

plot:
	gtkwave sim/demux_1to2.vcd

.PHONY: compile plot
