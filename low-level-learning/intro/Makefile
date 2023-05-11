all: main.o
	gcc -o main main.o -nostdlib -static

main.o: main.s
	as main.s -o main.o
