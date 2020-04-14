#!/bin/bash bash
# File: guessinggame.sh

function guessnooffiles {
echo "Guess the no of files in current directory?"
}

guessnooffiles

filecount=$(pwd | ls | wc -l)

while [[ $response != $filecount ]]
do
	read response
	if [[ $response -gt $filecount ]]
	then
		echo "Greater than Actual Count"
	elif [[ $response -lt $filecount ]]
	then
		echo "Lesser than Actual Count"
	fi
done

echo "Correct guess , $response"
