#!/bin/bash

if [ -s $1 ]
then
	
	# clearing the files 

	echo -n `echo -n >oddfile`

	echo -n `echo -n >evenfile`

	IFS=$'\n'

	c=1

	for next in `cat $1`
	do

	if [ $c -eq 1 ]
	then

		echo -n `echo $next >> oddfile`

		c=`expr $c + 1`

	else

		echo -n `echo $next >> evenfile`

		c=`expr $c - 1`

	fi

	done

else

	echo "The file is empty or doesn't exsits"

fi 
