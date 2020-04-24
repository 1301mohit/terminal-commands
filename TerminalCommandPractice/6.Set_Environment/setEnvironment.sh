#!/bin/bash -x
isExist=`env | awk -F = '{ print $1 }' | grep -w usersecret`;
echo $isExist;
if [ ! $isExist ]
then
	export usersecret=dh34xjaa23;
fi

