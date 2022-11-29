#!/bin/bash
echo " Hi master what can i do  for you? ask me anything date, joke, calculate. ctrl^C to quit me " 
while true
do
read -p ">$" insert
	case "$insert" in 
		*joke* )
		shuf -n 1 /home/thomas/devops/Bash_Scripting/BRIEFING-Bash_Scripting/script/joke.txt
		;;
		*date* )
		date
		;;
		*calculate*)
		echo "tell me your equation to resolve:"
		read prob
		tot=$(echo $prob | bc)
		echo $tot
		;;
	esac 
done
