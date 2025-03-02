#!/bin/sh

if [ "$#" -eq 0 ]; then
	echo "Failed to receive arguments"
	echo "Usage: $0 word1,word2, word3, ..., wordN"
	exit 1
fi

for word in "$@"; do
	echo "$word"
done | sort

