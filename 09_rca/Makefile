compile:
	iverilog -o sim/rca.vvp -f filelist.f
	vvp sim/rca.vvp

plot:
	gtkwave sim/rca.vcd &

clean:
	rm -f sim/rca.vvp sim/rca.vcd

.PHONY: compile plot clean
