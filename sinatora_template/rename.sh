#!/bin/bash
NAME="sinatora_sample"
read -p "Do you want to rename? \"${NAME}\" -> \"$1\" (y/n): " yn
if [ ${yn} = 'y' ]; then
	grep -rl ${NAME} . --exclude="`basename $0`" | xargs sed -i "s/${NAME}/$1/g"
	echo 'Renamed!!'
fi
