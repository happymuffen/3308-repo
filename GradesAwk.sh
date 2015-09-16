#!/bin/bash
#Ben Yakura

if [ $# -ne 1 ]; then
	echo "Usage: $0 filename"
	exit 2
fi
if [ ! -f $1 ]; then
	echo '$1 is not a valid file'
	exit 2
fi

sort -o tmp -k3,3 -k2,2  $1
chmod +rwx ./tmp
cat tmp
awk '{avg=0}{avg+=$4+$5+$6}{print avg" ["$1"] "$3" "$2}' tmp
rm tmp
