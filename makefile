#Title: guessing-game - ask user to guess the number of files in this directory

all: guessinggame.sh README.md

guessinggame.sh:
	touch guessinggame.sh

README.md: guessinggame.sh
	echo "Project Title: guessing game - ask user to guess the number of files in this directory" >README.md
	echo "This program was installed on:" >> README.md
	date >> README.md
	echo "This program contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm guessinggame.sh
	rm README.md
