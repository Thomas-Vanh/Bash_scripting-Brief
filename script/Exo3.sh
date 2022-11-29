#!/bin/bash

function path_to() {
	path=$@
        if  [[ -f $path &&  $path == *.txt || $path == *.js ]];
                then
                cat $path
        elif [ -d $path ];
        	then 
        	ls $path

        else
                echo "this is not a directory or a file"
        fi
}
