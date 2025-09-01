compile:
	iverilog -o sim/pri_encoder.vvp -f filelist.f
	vvp sim/pri_encoder.vvp

plot:
	gtkwave sim/pri_encoder.vcd &

clean:
	rm -f sim/pri_encoder.vvp sim/pri_encoder.vcd

.PHONY: compile plot clean
