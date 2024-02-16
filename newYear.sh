#!/usr/bin/env bash
# Dir to make files in

if [ -z "$1" ]
then
	echo "please provide a year number as the first argument"
	exit
fi

dir=$HOME/werk
# Subjects to make folders for
subjects=("Nederlands" "Wiskunde" "O&O" "Aardrijkskunde" "Engels" "Frans" "Scheikunde" "LO" "Mentorles" "Natuurkunde" "Maatschapijleer")

# cd into folder
cd $dir
# create folder with name based on first argument (proberbly a year number)
mkdir $dir/$1

# For every subject create its folder in the year folder
for i in "${subjects[@]}"
do
	mkdir $dir/$1/$i
done
