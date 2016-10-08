#!/bin/bash

echo
echo "This is your commit message:"
echo "----------------------------"
echo "$1"
echo "----------------------------"
echo
echo "If you messed up, use git commit --amend"

git add -A
git commit -m "$1"

# Checks if user is going to push
if [ "$2" = "-t" ]
then
	echo "Now pushing..."
	# Enters Usernmae and Pass fields	
	expect <<- DONE
		set timeout -1
		spawn git push
		expect "Username *"
		send -- "YOUR_USERNAME\r"
		expect "Password *"
		send -- "YOUR_PASSWORD\r"
		expect eof
	DONE

fi
