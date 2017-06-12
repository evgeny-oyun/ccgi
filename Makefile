all:
	gcc -I. -c ccgi.c crypt.c && strip -s --strip-debug -R .gnu.version --strip-unneeded -R .comment -R .note ccgi.o && ar rcs libccgi.a ccgi.o && rm ccgi.o && mv libccgi.a ../../lib/libccgi.a