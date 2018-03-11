#!/bin/bash

if [ -s $1 ]
then
	IFS=$'\n'

	arr=(`cat -n $1 | sort -uk2 | sort -uk1 |cut -f2`)

	declare -i loop

	loop=${#arr[@]}

	declare -i loopt

	loopt=0

	while [ $loopt -le $loop ]
	do

	if [ $loopt = 0 ]
	then

	echo -n "`echo ${arr[$loopt]}  1>tmp`"

	else

	echo -n "`echo ${arr[$loopt]}  1>>tmp`"

	fi	

	loopt=`expr $loopt + 1`

	done

	echo -n "`cat tmp 1>$1`"

else

	echo "The file $1 is empty or doesn't exsits"

fi
