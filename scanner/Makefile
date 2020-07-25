scanner_main: scanner.c scanner_main.c token.c token.h
	gcc -o $@ $^

scanner.c: scanner.flex
	flex -o scanner.c scanner.flex
	