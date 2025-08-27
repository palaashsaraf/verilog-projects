compile:
	iverilog -o sim/mux_2to1.vvp -f filelist.f
	vvp sim/mux_2to1.vvp

plot:
	gtkwave sim/mux_2to1.vcd

.PHONY: compile plot
