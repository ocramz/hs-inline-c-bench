SRCDIR = src
CDIR = cbits
LIBDIR = lib


main:
	# make c
	make step1
	make step2

c:
	cc -c ${CDIR}/test.c -o ${LIBDIR}/test.o

step1:
	ghc ${SRCDIR}/InlineC.hs -i${SRCDIR}/

step2:
	cc -c ${SRCDIR}/InlineC.c -o ${LIBDIR}/InlineC.o
