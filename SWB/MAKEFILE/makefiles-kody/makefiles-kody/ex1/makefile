# Main makefile

main: main.o dbgPrint.o
	g++ main.o dbgPrint.o -o main

main.o: main.cpp main.h
	g++ main.cpp -o main.o -c

dbgPrint.o: dbgPrint.cpp dbgPrint.h
	g++ dbgPrint.cpp -o dbgPrint.o -c

clean:
	rm -f *.o
