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
#1
echo $(cat $1|egrep -r [^0-9]$|wc -l)
#2
echo $(cat $1|egrep -r ^[^a,e,i,o,u]|wc -l)
#3
echo $(cat $1|egrep -r ^[a-Z]{12}$|wc -l)
#4
echo $(cat $1|egrep -r ^[0-9]{3}-[0-9]{3}-[0-9]{4}$|wc -l)
#5
echo $(cat $1|egrep -r ^303-[0-9]{3}-[0-9]{4}$|wc -l)
#6
echo $(cat $1|egrep -r ^[a,e,i,o,u].+[0-9]$|wc -l)
#7
echo $(cat $1|egrep -r ^.+@geocities\.com|wc -l)
#8 there are too many TDLs to hard code them in
echo $( cat regex_practice_data.txt |egrep -r ^[a-Z,0-9,\.,-]+@[a-Z,0-9,\.,-]+\.[com,org,edu,gov,uk,ca,de,jp,fr,au,us,ru,ch,it,nl,se,no,es,mil]$|wc -l)
#As of Wed Sep  9 07:07:01 2015 UTC: there were 1054 TLDs.
#these are the top 20 top level domains according to google
