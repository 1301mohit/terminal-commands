#!/bin/bash -x
for file in `ls *.txt`
do
	folderName=`echo $file | awk -F. '{print $1}'`;
#	if [ -d $folderName ]
#	then
		rm -R $folderName;
#	fi
	mkdir $folderName;
	mv $file $folderName
done
