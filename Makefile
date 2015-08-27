CC=/tmp/afl/bin/afl-gcc
all: app
test: app
	AFL_EXIT_WHEN_DONE=1 /tmp/afl/bin/afl-fuzz -i i -o o ./app >/dev/null &
	PID=$&
	while [ -d /proc/${PID} ]; do
		cat o/fuzzer_stats
		sleep 5;
	done
	cat o/fuzzer_stats
