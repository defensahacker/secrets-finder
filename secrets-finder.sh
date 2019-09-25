#!/bin/bash
#
# -*- Secrets finder -*-
#
# Searches for secrets (passwords, private keys, tokens, ip addresses, etc)
# inside any folder that contains source code
#
# 2019 Jacobo Avariento


if [ $# -lt 1 ] ; then
	echo "Usage: $0 <DIR1> (<DIR2> <DIR3> ...)"
	exit
fi

for dir in $* ; do
	egrep --color -nri "(password[^)}]|login|[^<]token[ =:]|credentials|username|nginx\.key|BEGIN PGP)" --exclude "*.map" $dir
done
