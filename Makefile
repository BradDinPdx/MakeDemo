CC=gcc
CFLAGS=-I.
DEPS = hellomake.h
OBJ = hellomake.c hellofunc.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
