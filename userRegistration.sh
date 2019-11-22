#!/bin/bash -x
shopt --s extglob


function toCheckFirstName()
{
	firstNamePattern="^[A-Z]+[a-z]*$"
	if [[ $firstName =~ $firstNamePattern ]]
	then
        	echo "VALID FIRST-NAME"
	else
        	echo "INVALID FIRST-NAME"
	fi
}

function toCheckLastName()
{
	lastNamePattern="^[A-Z]+[a-z]{3,}$"
	if [[ $lastName =~ $lastNamePattern ]]
	then
        	echo "VALID LAST-NAME"
	else
        	echo "INVALID LAST-NAME"
	fi
}

function toCheckEmailAddress()
{
	emailAddressPattern="^[a-z0-9]+[\.\+\_\-]?[0-9a-z]+@{1}[a-z0-9]+\.{1}[a-z]{2,4}([.][a-z]{2})?$"
	if [[ $emailAddress =~ $emailAddressPattern ]]
        then
                echo "VALID EMAIL-ADDRESS"
        else
                echo "INVALID EMAIL-ADDRESS"
        fi
}

function toCheckMobileNUmber()
{
	mobileNumberPattern="^[0-9]{2}[[:space:]][0-9]{10}$"
	if [[ $mobileNumber =~ $mobileNumberPattern ]]
        then
                echo "VALID MOBILE NUMBER"
        else
                echo "INVALID MOBILE NUMBER"
        fi
}

function tocheckPassword()
{
	passwordPattern=".*[a-z0-9A-Z].[A-Z]{1}.[0-9]{1}.*[A-Za-z0-9]$"
	if [[ $password =~ $passwordPattern ]]
        then
                echo "VALID PASSWORD"
        else
                echo "INVALID PASSWORD,IT SHOULD HAVE MINIMUM 8 CHARACTERS"
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
	echo "Enter the MObile Number: "
	read mobileNumber
	toCheckMobileNUmber
	echo "Enter password: "
	read -s password
	tocheckPassword

}

#main

echo "Enter password: "
read  password
tocheckPassword



