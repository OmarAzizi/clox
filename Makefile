CC = gcc
CFLAGS = -Wall 
SOURCE = main.c chunk.c memory.c debug.c value.c vm.c compiler.c scanner.c
OBJECTS = $(SOURCE:.c=.o)

build: $(OBJECTS)
	$(CC) $(CFLAGS) -o clox $(OBJECTS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o *~ clox
