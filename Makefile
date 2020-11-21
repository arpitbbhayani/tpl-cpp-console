CC=gcc

all: svc

svc: main.o svc.o
	gcc -o svc -Wall main.o svc.o

main.o: main.c svc.h
	gcc -I. -Wall -c main.c svc.c

svc.o: svc.c svc.h
	gcc -I. -Wall -c svc.c

clean:
	rm -rf *.o *.h.gch a.out svc
