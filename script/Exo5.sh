#!/bin/bash

function group {
       	read -p "user name: " user
        lsgroup=($(groups) "$user")
        for i in ${lsgroup[@]}; do
                echo " $user  is in a group called " $i
done
}
