#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Hello there"
		echo "you have guess it"
		echo "  thanks then"
		echo " start guessing"
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "This is too low. try again, press Enter :"
			guess_filenum
		else
			echo "This is too high. try again, press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game"
echo "Guess number of files are in the present directory and press Enter :"
guess_filenum

