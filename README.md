# Verilog Projects

A collection of digital design modules written in **Verilog HDL**.
Each project includes its source, testbench, and simulation output.

---

## 📂 Projects

- `01_full_adder/` – 1-bit full adder with carry in/out 
- `02_mux_2to1/` – 2:1 multiplexer
- `03_mux_4to1/` - 4:1 multiplexer
- `04_demux_1to2/` - 1:2 demultiplexer
- `05_param_mux/` - parametric N-bit multiplexer
- `06_pri_encoder/` - parametric N-bit priority encoder
- `07_decoder/` - parametric N-bit decoder

---

## ▶️ Usage

**Requirements**  
- [Icarus Verilog](http://iverilog.icarus.com/) (`iverilog`, `vvp`)
- [GTKWave](http://gtkwave.sourceforge.net/) (waveform viewer)

```bash
# compile and simulate manually
$ iverilog -o sim/<project>.vvp -f filelist.f
$ vvp sim/<project>.vvp
$ gtkwave sim/<project>.vcd

# or use the provided Makefile
$ make compile
$ make plot
