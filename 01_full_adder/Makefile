compile:
	iverilog -o sim/full_adder.vvp -f filelist.f
	vvp sim/full_adder.vvp
plot:
	gtkwave sim/full_adder.vcd &

clean:
	rm -f sim/full_adder.vvp sim/full_adder.vcd

.PHONY: compile plot clean
