compile:
	iverilog -o sim/comparator.vvp -f filelist.f
	vvp sim/comparator.vvp

plot:
	gtkwave sim/comparator.vcd &

clean:
	rm -f sim/comparator.vvp sim/comparator.vcd

.PHONY: compile plot clean
