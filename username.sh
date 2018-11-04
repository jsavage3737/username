#!/bin/bash
# username.sh
# Author: Jack Savage

echo "Welcome to the username program!"
echo "Your username must:"
echo "1) Contain only lower case letters, digits or underscore"
echo "2) Start with a lower case letter"
echo "3) Contain between 3 and 12 characters"
echo "Enter a valid username: "
read USRNM

while ! echo $USRNM | egrep "[a-z0-9_\-]+$" | egrep "^[a-z]" | egrep "^\w{3,12}$" > /dev/null 2>&1; do
	echo "The username you submitted does not meet the rules stated above"
	echo "Please try again! "
	echo "Username:"
	read USRNM
done
echo "Thank you"

