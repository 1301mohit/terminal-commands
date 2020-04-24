#!/bin/bash
if [ -d backupFile ]
then
	rm -r backupFile
fi
mkdir backupFile
for file in `find /var/log -type f -mtime +7`
do
	echo $file
	cp $file backupFile
done
