compile:
	iverilog -o sim/decoder.vvp -f filelist.f
	vvp sim/decoder.vvp

plot:
	gtkwave sim/decoder.vcd &

clean:
	rm -f sim/decoder.vvp sim/decoder.vcd

.PHONY: compile plot clean
