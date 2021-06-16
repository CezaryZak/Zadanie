#Makefile
.PHONY: clean
.SUFFIXES: .c .o 
vpath %.h include
vpath %.c src

%.o: %.c 
	gcc -c $<
%: %.o print.o
	gcc -o $@ $^
	
hello: hello.o print.o
hello.o: hello.c 
print.o: print.c
	gcc -c $<
clean:
	rm -f hello *.o 
