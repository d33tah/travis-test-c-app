#!/bin/sh
wget "http://lcamtuf.coredump.cx/afl/releases/afl-1.87b.tgz" -O- | tar zxvf - ; cd afl-1.87b; ./configure --prefix=/tmp && make && make install
