#! /bin/bash
directory="./BashScripting"

# bash check if direcitory exists
if [ -d $directory ]; then
	echo "Directory exists"
else
	echo "Directory does not exists"
fi

