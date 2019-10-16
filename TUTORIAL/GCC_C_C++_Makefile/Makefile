hello.o: hello.c
	gcc -c hello.c

hello: hello.o
	gcc hello.o -o hello

run: hello
	./hello

clear:
	rm *.o