O = XConnDis.o XlibInt.o

JONSTAIL = /cs/research/darpa/ron/jon/isodetail/

D = -DINCLUDE_ALLOCA_H -DISOCONN -DISODEBUG \
-DISODEPATH=\"$(JONSTAIL)\" -DDEFAULTTSERVICE=\"X0\"

ISODE = ../../

CFLAGS = -I. -I/cs/sys/src/package/X11/R3/server/include \
-I/cs/sys/src/package/X11/R3/X11 -I${ISODE} $D

all: $O

lint: *.c
	lint $(CFLAGS) *.c
