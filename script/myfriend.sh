#!/bin/bash
shopt -s nocasematch
var1=joke
var3=date
var5=calculate
var6=resolve
joke=(joke.txt)
read input;
case "$input" in
	$var1 | $var2) 
	echo $random $(joke[@])
	;;
	$var3 | $var4)
	date
	;;
	$var6 | $var5) 
	echo "Would u like me to calculate something? 
	read -i  answer
	;;
esac
