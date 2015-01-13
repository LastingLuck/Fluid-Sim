CC=g++
CFLAGS=-std=c++11 -g -Wall
LFLAGS=-lSDL2 -lGL -lGLEW

all: fluidsimple

fluidsimple: main.o
	$(CC) $(CFLAGS) $(LFLAGS) $^ -o $@

main.o: main.cpp
	$(CC) $(CFLAGS) -c $^