CC = gcc
CFLAGS = -g -Wall -pedantic -std=c99
LDFLAGS = 

libslutils.a: arraylist.o
	libtool -o $@ -static $^

all:
	libslutils.a

.PHONY: clean
clean:
	rm -f *.a *.o

.PHONY: install
install:
	cp libslutils.a /usr/local/lib
	mkdir -p /usr/local/include/slutils
	cp *.h /usr/local/include/slutils

.PHONY: uninstall
uninstall:
	rm -f /usr/local/lib/libslutils.a
	rm -rf /usr/local/inclludes/slutils

