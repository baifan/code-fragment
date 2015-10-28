#!/bin/bash

read -n1 -p "Do you want to continue [Y/N]? " answer 
echo '--------------------------------------------------------------------'
echo
echo "Your answer:${answer}"
case $answer in 
Y|y) 
    echo "Find Continue"
    sleep 1s;;
N|n) 
    echo "Ok Goodbye"
    sleep 1s
    exit 0;; 
*) 
    echo "Error Choice"
    sleep 1s
    exit 0;;
esac

exit 0