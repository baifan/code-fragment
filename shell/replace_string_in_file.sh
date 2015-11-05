#!/bin/bash

echo '--------------------------------------------------------------------'
echo
echo -n "Enter File Name(Like ABC.txt): "
read FILE_NAME
echo '--------------------------------------------------------------------'
echo
echo -n "Enter Old String(Like AAAAA): "
read OLD_STRING
echo '--------------------------------------------------------------------'
echo
echo -n "Enter New String(Like BBBBB): "
read NEW_STRING
echo '--------------------------------------------------------------------'
echo
echo "File Name :${FILE_NAME}"
echo "Old String:${OLD_STRING}"
echo "New String:${NEW_STRING}"

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

find . -name ${FILE_NAME} | xargs sed -i "s/${OLD_STRING}/${NEW_STRING}/g"

echo 'Finish'

exit 0