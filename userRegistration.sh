#!/bin/bash -x
shopt --s extglob


firstNamePattern="^[A-Z]+[a-z]*$"
lastNamePattern="^[A-Z]+[a-z]{3,}$"


function toCheckFirstName()
{
	if [[ $firstName =~ $firstNamePattern ]]
	then
        	echo "VALID FIRST-NAME"
	else
        	echo "INVALID FIRST-NAME"
	fi
}

function toCheckLastName()
{

	if [[ $lastName =~ $lastNamePattern ]]
	then
        	echo "VALID LAST-NAME"
	else
        	echo "INVALID LAST-NAME"
	fi
}

function main()
{
	echo " Enter the First name: "
	read firstName
	toCheckFirstName
	echo "Enter the Last name: " 
	read lastName
	toCheckLastName
}
main

