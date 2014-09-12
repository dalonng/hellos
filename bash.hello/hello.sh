#! /usr/local/bin/bash

echo "Hello world."
echo "How goes it today?"

read response

if [[ $response = "good" ]]
then
	echo "Great!"
fi

while read name
do
	echo "Hello, $name"
done