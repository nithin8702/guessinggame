readme.md: guessinggame.sh
	echo "Guessing Game with number of lines:" > README.md
	wc -l guessinggame2.sh | egrep -o "[0-9]+" >> README.md
	date >> README.md
