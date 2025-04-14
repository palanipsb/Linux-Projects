#/bin/bash
# Declare variables

input="userlist"
while IFS= read -r user
do

	useradd -m $user
	echo "User $user created."

done<$input