SRCDIR = src
CDIR = cbits
LIBDIR = lib


main:
	# make c
	make step1
	make step2
	make step3

c:
	cc -c ${CDIR}/test.c -o ${LIBDIR}/test.o

step1:
	ghc ${SRCDIR}/InlineC.hs -i${SRCDIR}/ 

step2:
	cc -c ${SRCDIR}/InlineC.c -o ${LIBDIR}/InlineC.o -I${CDIR}

step3:
	ghci ${SRCDIR}/Lib.hs ${SRCDIR}/InlineC.hs ${LIBDIR}/InlineC.o -i${SRCDIR}/
