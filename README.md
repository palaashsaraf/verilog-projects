# Verilog Projects

A collection of digital design modules written in **Verilog HDL**.  
Each project includes its source, testbench, and simulation output.

---

## 📂 Projects

- `full_adder/` – 1-bit full adder with carry in/out  
- `mux_2to1/` – 2:1 multiplexer  

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
