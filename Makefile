VERSION?=0.1
PREFIX?=/usr
CFLAGS?=-Wall -O2 -DVERSION=$(VERSION)
CC?=gcc

all: unacloud-task-tools

unacloud-task-tools: register_uc.c
	$(CC) -o register_uc register_uc.c 

install: unacloud-task-tools
	mkdir -p ${PREFIX}/bin
	cp register_uc ${PREFIX}/bin
	# mkdir -p ${PREFIX}/share/man/man1
	# cp register_uc.1.gz ${PREFIX}/share/man/man1

deinstall: 
	rm -f ${PREFIX}/bin/register_uc
	# rm -f ${PREFIX}/share/man/man1/register_uc.1.gz

clean:
	rm -f register_uc 

tarball: clean
	cd .. && tar czf unacloud-task-tools-$(VERSION).tar.gz unacloud-task-tools
