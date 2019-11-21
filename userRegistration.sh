#!/bin/bash -x
shopt --s extglob

echo " Enter the First name: "
read firstName
firstNamePattern="^[A-Z]+[a-z]*$"
if [[ $firstName =~ $firstNamePattern ]]
then
        echo "VALID USERNAME"
else
        echo "INVALID USERNAME"
fi

