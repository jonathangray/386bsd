# Generated automatically from Makefile.in by configure.
# Makefile for GNU shell utilities programs.
# Do not use this makefile directly, but only from `../Makefile'.
# Copyright (C) 1991 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

SHELL = /bin/sh

srcdir = ./src


SOURCES = basename.c date.c dirname.c env.c expr.c id.c logname.c \
pathchk.c printenv.c printf.c sleep.c tee.c test.c tty.c whoami.c yes.c \
nice.c stty.c uname.c version.c
DISTFILES = Makefile.in system.h $(SOURCES) groups.sh nohup.sh

PROGS = basename date dirname env expr groups id logname \
pathchk printenv printf sleep tee test tty whoami yes \
 nice nohup

all: $(PROGS)
.PHONY: all

install: all
	for f in $(PROGS); do $(INSTALL) $$f $(bindir)/$(binprefix)$$f; done
	rm -f $(bindir)/'['; ln $(bindir)/test $(bindir)/'['
.PHONY: install

tags: $(SOURCES)
	ctags $(SOURCES)

TAGS: $(SOURCES)
	etags $(SOURCES)

mostlyclean:
	rm -f $(PROGS) *.o core
.PHONY: mostlyclean

clean: mostlyclean
	rm -f tags TAGS Makefile
.PHONY: clean

realclean: clean
.PHONY: realclean

dist:
	ln $(DISTFILES) ../`cat ../.fname`/src
.PHONY: dist

$(PROGS): ../lib/libshu.a version.o

basename: basename.o
	$(CC) $(LDFLAGS) -o $@ basename.o ../lib/libshu.a version.o $(LIBS)

date: date.o
	$(CC) $(LDFLAGS) -o $@ date.o ../lib/libshu.a version.o $(LIBS)

dirname: dirname.o
	$(CC) $(LDFLAGS) -o $@ dirname.o ../lib/libshu.a version.o $(LIBS)

env: env.o
	$(CC) $(LDFLAGS) -o $@ env.o ../lib/libshu.a version.o $(LIBS)

expr: expr.o
	$(CC) $(LDFLAGS) -o $@ expr.o ../lib/libshu.a version.o $(LIBS)

id: id.o
	$(CC) $(LDFLAGS) -o $@ id.o ../lib/libshu.a version.o $(LIBS)

groups: groups.sh
	rm -f $@
	if test -f groups.sh; then cp groups.sh groups; else cp $(srcdir)/groups.sh groups; fi

logname: logname.o
	$(CC) $(LDFLAGS) -o $@ logname.o ../lib/libshu.a version.o $(LIBS)

nohup: nohup.sh
	rm -f $@
	if test -f nohup.sh; then cp nohup.sh nohup; else cp $(srcdir)/nohup.sh nohup; fi

pathchk: pathchk.o
	$(CC) $(LDFLAGS) -o $@ pathchk.o ../lib/libshu.a version.o $(LIBS)

printenv: printenv.o
	$(CC) $(LDFLAGS) -o $@ printenv.o ../lib/libshu.a version.o $(LIBS)

printf: printf.o
	$(CC) $(LDFLAGS) -o $@ printf.o ../lib/libshu.a version.o $(LIBS)

sleep: sleep.o
	$(CC) $(LDFLAGS) -o $@ sleep.o ../lib/libshu.a version.o $(LIBS)

tee: tee.o
	$(CC) $(LDFLAGS) -o $@ tee.o ../lib/libshu.a version.o $(LIBS)

test: test.o
	$(CC) $(LDFLAGS) -o $@ test.o ../lib/libshu.a version.o $(LIBS)

tty: tty.o
	$(CC) $(LDFLAGS) -o $@ tty.o ../lib/libshu.a version.o $(LIBS)

whoami: whoami.o
	$(CC) $(LDFLAGS) -o $@ whoami.o ../lib/libshu.a version.o $(LIBS)

yes: yes.o
	$(CC) $(LDFLAGS) -o $@ yes.o ../lib/libshu.a version.o $(LIBS)

nice: nice.o
	$(CC) $(LDFLAGS) -o $@ nice.o ../lib/libshu.a version.o $(LIBS)

stty: stty.o
	$(CC) $(LDFLAGS) -o $@ stty.o ../lib/libshu.a version.o $(LIBS)

uname: uname.o
	$(CC) $(LDFLAGS) -o $@ uname.o ../lib/libshu.a version.o $(LIBS)

test.o:		test.c
	$(CC) $(CFLAGS) -DSTANDALONE -c test.c $(OUTPUT_OPTION)

env.o id.o nice.o pathchk.o stty.o tty.o uname.o: ../lib/getopt.h
expr.o: ../lib/regex.h
