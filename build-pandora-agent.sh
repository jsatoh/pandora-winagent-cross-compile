#!/bin/sh

if [ -f /win32/Makefile ]; then
	cd /win32
	make
	exit 0
fi

if [ -f /win32/build.sh ]; then
	cd /win32
	./build.sh
	exit 0
fi

echo "/win32 directory is not found or insufficient. "
exit 1
