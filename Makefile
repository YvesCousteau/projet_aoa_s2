CC=gcc
CFLAGS=-W -Wall -ansi -pedantic
LDFLAGS=
EXEC=projet

all:
	$(EXEC)

projet: code.o
	$(CC) -o projet code.o $(LDFLAGS)

code.o: code.c
	$(CC) -o code.o -c code.c $(CFLAGS)

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
