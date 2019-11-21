#!/bin/bash -x
shopt --s extglob


firstNamePattern="^[A-Z]+[a-z]*$"
lastNamePattern="^[A-Z]+[a-z]{3,}$"
emailAddressPattern="^[a-z0-9]+[\.\+\_\-]?[0-9a-z]+@{1}[a-z0-9]+\.{1}[a-z]{2,4}([.][a-z]{2})?$"

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

function toCheckEmailAddress()
{
	if [[ $emailAddress =~ $emailAddressPattern ]]
        then
                echo "VALID EMAIL-ADDRESS"
        else
                echo "INVALID EMAIL-ADDRESS"
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
	echo "Enter the User Email Address: "
	read emailAddress
	toCheckEmailAddress
}
main

