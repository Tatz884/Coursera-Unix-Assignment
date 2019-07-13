file_number=`ls -a | egrep ^[^.] | wc -l` # "egrep excludes hidden files whose names start with '.'"

echo $file_number

function ask_number {
echo "Guess the number of files in this directory"
read response
}

ask_number

while [[ $response -ne $file_number ]]
do

	if [[ $((response)) != $response ]] #see if the input contains letter
	then
		echo "your input contains letters; please enter the number"
	elif [[ $response -gt $file_number ]]
	then
		echo "your input is larger than the right number"
	elif [[ $response -lt $file_number ]]
	then
		echo "your input is smaller than the right number"
	else
		echo "oops, something seems weired; contact me if you see this message"
	fi

ask_number

done

echo "Congrats, you got a correct answer!"
