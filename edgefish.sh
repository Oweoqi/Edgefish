#!/usr/bin/env bash

codefolder=$1
cidr=$2

if [ "$codefolder" == "" ]
then
echo -e "No folder location was entered, please re-run with: ./edgefish.sh </path/to/code> \n"
exit
fi

cd ./snippets

for folder in `ls`
do
	cd ./$folder
	echo -e "$folder \n"
	
	for file in `ls`
	do
		while read functions;do
			echo -e "$functions checks: \n"
			grep -i -r $functions $codefolder
		done < $file
	done
	cd ..
done
cd ..
