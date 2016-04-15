CC=/usr/bin/gcc
CFLAGS=-Os -pedantic -Wall -Werror
SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)
EXEC=exec

.PHONY: all clean

all : $(OBJECTS)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJECTS)

%.o : %.c
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OBJECTS) $(EXEC)

