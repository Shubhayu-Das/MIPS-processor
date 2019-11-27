CC = iverilog
CFLAGS = -Wall

mux: mux.v
	$(CC) $(CFLAGS) -o mux.out mux.v && ./mux.out

adder: adder.v
	$(CC) $(CFLAGS) -o adder.out adder.v && ./adder.out

pc: PC.v
	$(CC) $(CFLAGS) -o pc.out PC.v && ./pc.out

instmem: InstMem.v
	$(CC) $(CFLAGS) -o instmem.out InstMem.v && ./instmem.out

registerfile: registers.v
	$(CC) $(CFLAGS) -o registerfile.out registers.v && ./registerfile.out

signextend: Sign_extend.v
	$(CC) $(CFLAGS) -o signextend.out Sign_extend.v && ./signextend.out

clean: 
	rm -f *.vcd 
	rm -f *.out
