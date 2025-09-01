compile:
	iverilog -o sim/param_mux.vvp -f filelist.f
	vvp sim/param_mux.vvp

plot:
	gtkwave sim/param_mux.vcd

clean:
	rm -f sim/param_mux.vvp sim/param_mux.vcd

.PHONY: compile plot clean
