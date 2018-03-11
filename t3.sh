#!/bin/bash

stringToLower="somestring"

Is_Lower()
{

	stringToLower=${stringToLower,,}

}

Is_Root()
{

	if [ $USER = "root" ]

	then

	ans=0

	else

	ans=1

	fi	

	return $ans

}

Is_User_Exists()
{

	r=`cat /etc/passwd | grep $1`

	if [ $? = 0 ]
	then

	ans=0

	else

	ans=1

	fi	

	return $ans

}



#testing Is_Lower()

echo -n "Enter a String : "

read stringToLower

Is_Lower

echo "Converted String : $stringToLower"


#testing Is_Root()

Is_Root

isroot=$?

if [ $isroot = 0 ]
then

	echo "The user executing script is root"

else

	echo "The user executing script is not root"

fi


#testing Is_User_Exists()

echo -n "Enter Username : "

read user

Is_User_Exists $user

if [ $? = 0 ]
then

	echo "The user $user exsits "

else

	echo "The user $user doesn't exsits "

fi
