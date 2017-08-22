#!/bin/bash

shopt -s extglob

uniqs=$(ls CSV/*0.csv | egrep -v -e 20 -e 30 -e 40 -e 50 -e '(^|[^v010])10' | sed 's/0\.csv//gi')

for typ in $uniqs; do
	cnt=$(wc -l ${typ}+([0-9]).csv | grep -i total)
	echo ${typ} ${cnt}
done
