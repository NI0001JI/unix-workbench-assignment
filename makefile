readme.md: guessinggame.sh
	touch README.md
	printf "This project is called Guessing Game\n <br />" >> README.md
	echo -n "The readme file was initialised at: " >> README.md
	date +"%d/%m/%Y %H:%M:%S" >> README.md
	echo "<br />" >> README.md
	echo -n "The number of lines in guessinggame.sh is: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "<br />" >> README.md
