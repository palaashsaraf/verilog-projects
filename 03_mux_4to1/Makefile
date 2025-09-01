compile:
	iverilog -o sim/mux_4to1.vvp -f filelist.f
	vvp sim/mux_4to1.vvp

plot:
	gtkwave sim/mux_4to1.vcd &

clean:
	rm -f sim/mux_4to1.vvp sim/mux_4to1.vcd

.PHONY: compile plot clean
