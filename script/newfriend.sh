#!/bin/bash
 
#non-interactive part 
arg=$@

if [[ -n $arg && $arg == *joke* ]];then #check if arg is not empty and if it match with joke
	shuf -n 1 /home/thomas/devops/Bash_Scripting/BRIEFING-Bash_Scripting/script/joke.txt #shuffle the content of joke.txt 
	exit 
elif [[ -n $arg && $arg == *date* ]];then #same as above but with date 
	date #print the date and time 
	exit 
elif [[ -n $arg && "$arg" -eq "$arg" ]] 2>/dev/null;then #check if arg is an equation  
	tt=$(echo $arg | bc)
	echo $tt
	exit
#if the argument are empty continue to interactive part 
fi


#interactive part 

echo " Hi master what can i do  for you? ask me anything date, joke, calculate and quit to exit me "

while true	 # infinite loop 
do
read -p $'\e[48;5;202m'$(pwd)$'\e[0m'" >$"  insert
	case "$insert" in 
		*joke* )
		shuf -n 1 /home/thomas/devops/Bash_Scripting/BRIEFING-Bash_Scripting/script/joke.txt	#shuffle the content of joke.txt 
		;;
		*date* )
		date	#print the date and time 
		;;
		*calculate* )
		echo "tell me your equation to resolve:"
		read prob
		tot=$(echo $prob | bc) #create a variable called tot  and echo the equation piped to a bc  to calculate
		echo $tot 	#print the total of the equation
		;;
		quit)
		echo " Bye bye master"
		exit
		;;
		*)
	 	eval $insert	#set ur string to be a cmd
		;;
	
	esac	#end of case 
done
