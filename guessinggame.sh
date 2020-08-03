# initialise all required variables and functions

endgame=false
numfiles=$(ls -1q | wc -l)
function getmsg {
	[[ $guess -gt $numfiles ]] && msg="Try a lower number" || msg="Try a bigger number"
	echo $msg
}

# prompts the user to guess

echo "How many files do you think is in this directory?"

# starts the loop

while [ $endgame = false ]
do
	read guess
	if [ $guess -eq $numfiles ]
	then
		echo "Correct! there is a total of $numfiles file(s) in the directory"
		echo "Thank you for playing the guessing game"
		endgame=true
	else
		getmsg
	fi 
done
