#!/bin/bash

#creating a directory for files who have no extension

nexet="noextension"

echo -n `mkdir ./noextension`

for filename in `ls`
do

#CHECKING IF THE FILE CONTAINS "." IN IT  

if [[ "$filename" =~ "." ]]
then

	#storing the extension
	
	exet=${filename#*.}

	#Moving the file to apporpiate directory  

	if [ -d $exet ]
	then

		echo -n `mv $filename ./$exet`

	else

		echo -n `mkdir ./$exet`

		echo -n `mv $filename ./$exet`

	fi 

else

	if [ -f $filename ]
	then

		echo -n `mv $filename ./$nexet`

	fi

fi

done
