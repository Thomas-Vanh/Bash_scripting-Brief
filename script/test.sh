#!bin/bash
read -p "Are u human: " rep
if [[ $rep = "yo" ||  $rep = "yes" || $rep = "y" ]]; then
	echo "hello human"
elif [[ $rep == "no" || $rep == "n" ]]; then
	echo "Hello not human"
else
	echo "fuck off"
fi
