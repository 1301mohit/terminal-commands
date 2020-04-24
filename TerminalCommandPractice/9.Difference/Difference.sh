#!/bin/bash -x
if [[ ! -d original && ! -d updated && ! -f original-file.sh && ! -f updated-file.sh && ! -d original-backup ]]
then
	mkdir original;
	mkdir updated;
	touch original-file.sh;
	touch updated-file.sh;
fi
cp original-file.sh original;
cp updated-file.sh updated;
diff -r original updated;
cp original/* original-backup;
