all: msgdemo polymsgdemo shmemdemo semdemo
msgdemo:
	gcc msgserv.c -o msgserv
	gcc msgcli.c -o msgcli
polymsgdemo:
	gcc polymsgserv.c -o polymsgserv
	gcc polymsgcli.c -o polymsgcli
shmemdemo:
	gcc shmemserv.c -o shmemserv
	gcc shmemcli.c -o shmemcli
semdemo:
	gcc semserv.c -o semserv
	gcc semcli.c -o semcli
archive:
	tar --create -z --file=linapi3.tar.gz  *.c *.h Makefile 