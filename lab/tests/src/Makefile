CC=../../../ssbig-na-sstrix/bin/gcc
CFLAGS=-g -O3

all: anagram test-printf test-fmath test-math test-llong test-lswlr sqrt strcpy

sqrt: sqrt.c
	$(CC) $(CFLAGS) -o sqrt sqrt.c

strcpy: strcpy.c
	$(CC) $(CFLAGS) -o strcpy strcpy.c

anagram: anagram.c
	$(CC) $(CFLAGS) -o anagram anagram.c

test-printf: test-printf.c
	$(CC) $(CFLAGS) -o test-printf test-printf.c

test-fmath: test-fmath.c
	$(CC) $(CFLAGS) -o test-fmath test-fmath.c

test-math: test-math.c
	$(CC) $(CFLAGS) -o test-math test-math.c

test-llong: test-llong.c
	$(CC) $(CFLAGS) -o test-llong test-llong.c

test-lswlr: test-lswlr.c
	$(CC) $(CFLAGS) -o test-lswlr test-lswlr.c

test:	all
	../simplesim-0.1/sim-safe anagram words < input.txt
	../simplesim-0.1/sim-safe test-printf
	../simplesim-0.1/sim-safe test-fmath
	../simplesim-0.1/sim-safe test-math
	../simplesim-0.1/sim-safe test-llong
	../simplesim-0.1/sim-safe test-lswlr

distclean:
	-make clean

clean:
	rm -f anagram test-printf test-fmath test-math test-llong test-lswlr test-as *.[oia] core *~

