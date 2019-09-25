#!/bin/bash
#
# -*- Infrastructure Secrets finder -*-
#
# Searches for infrastructure information
#
# 2019 Jacobo Avariento


if [ $# -lt 1 ] ; then
	echo "Usage: $0 <DIR1> (<DIR2> <DIR3> ...)"
	exit
fi

for dir in $* ; do
	egrep --color -nri "https?://[^w]" $dir
done
