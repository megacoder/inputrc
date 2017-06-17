# vim: ts=8 sw=8

INPUTRC	=${HOME}/.inputrc
#DIFF	=diff -uNp
DIFF	=mgdiff

all:	x.inputrc

clean:

distclean clobber: clean

install: x.inputrc
	install -c -m 0644 x.inputrc ${INPUTRC}

uninstall:
	${RM} ${INPUTRC}

diff:	x.inputrc
	@cmp -s x.inputrc ${INPUTRC} || ${DIFF} x.inputrc ${INPUTRC}
