#!/bin/bash

c=0
while [[ $c -le 10 ]]; do

	m=$(($1*c))
	((c++))
	echo "$c x $1 = $m"
done
