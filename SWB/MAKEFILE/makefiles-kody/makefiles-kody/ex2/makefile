# Main makefile
CC=g++
CFLAGS=-c -Wall
OBJKAT:=obj
BINKAT:=bin

$(BINKAT):
	mkdir -p $(BINKAT)

$(OBJKAT):
	mkdir -p $(OBJKAT)

main: main.o dbgPrint.o
	$(CC) $? -o $@

main.o: main.cpp main.h
	$(CC) $(CFLAGS) $< -o $(OBJKAT)/$@

dbgPrint.o: dbgPrint.cpp dbgPrint.h
	$(CC) $(CFLAGS) $< -o $(OBJKAT)/$@


.PHONY: clean
clean:
	rmdir -rf bin
	rmdir -rf obj
