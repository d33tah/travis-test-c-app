CC=/tmp/afl/bin/afl-gcc
all: app
test: app
	./perform_fuzzing

