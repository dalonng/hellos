#! /bin/bash

# declare STRING variable
#STRING="Hello World!"
# print variable on a screen
#echo $STRING

# use predefined variables to access passed argumentd
# echo arguments to the shell
echo  $0 $1 $2 $3 ' -> echo $0 $1 $2 $3'

OF=$(date +%Y%m%d).tar.gz
tar -czf $OF hello.sh

######################
VAR="global variable"
function bash {
	local VAR="local variable"
	echo $VAR
}
pw
echo $VAR
pw
bash

echo $VAR

echo -e "Hi, please type the word: \c"
read word
echo "The word you entered is: $word"
echo -e "Can you please enter two words? "
read word1 word2
echo "Here is your input:\"$word1\" \"$word2\""
echo -e "How do you feel about bash scripting?"
# read command now stores a reply into the default build-in variable $REPLY
read
echo "You said $REPLY, I'm glad to hear that!"
echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"