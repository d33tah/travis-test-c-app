CC=/tmp/afl/afl-gcc
all: app
test: app
	AFL_EXIT_WHEN_DONE=1 /tmp/afl/afl-fuzz -i i -o o ./app
