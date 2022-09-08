#!/bin/bash

echo "Enter the file name"
read file     	
filesize=$(du -k $file | cut -f 1)
maxsize=1024
tmp_dir=$(mktemp -d)
until [[ $filesize -ge $maxsize ]]; do

	echo "Filesize: $filesize"
        cp $file $tmp_dir/filename
        cat $tmp_dir/filename >> $file	
	filesize=$(du -k $file | cut -f 1)

done

rm $tmp_dir/filename
rm -r $tmp_dir

