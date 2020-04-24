#!/bin/bash -x
for file in `ls *.log.1`
do
	nameOfTheFile=`echo $file | awk -F. '{print $1}'`
	d=`date +%d%m%Y`
   mv $file $nameOfTheFile$d.log
done
