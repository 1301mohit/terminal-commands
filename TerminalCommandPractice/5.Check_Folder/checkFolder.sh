#!/bin/bash -x
read -p "Please enter folder name : " folderName;
if [ -d $folderName ]
then
	printf "Folder already exist with name "$folderName;
else
	mkdir $folderName;
fi
