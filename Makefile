CC=gcc
CFLAGS=-Wall -I.
BINS=scanner/scanner_main

all: $(BINS)

scantest: scanner/scanner_main
	scanner/scantest.sh	

scanner/scanner_main: scanner/scanner.o scanner/scanner_main.o scanner/token.o util/errors.o
	gcc -o $@ $^

# Avoid compilation warnings for scanner.c
scanner/scanner.o: scanner/scanner.c
	gcc -c -o $@ $^

scanner/scanner.c: scanner/scanner.flex
	flex -o $@ $^

.PHONY: clean
clean:
	find . -type f -name '*.o' -delete
	rm -f $(BINS)