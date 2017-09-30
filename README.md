# Password Generator

[![Coverage Status](https://coveralls.io/repos/github/AaronRodrigues/passwordgenerator/badge.svg?branch=master)](https://coveralls.io/github/AaronRodrigues/passwordgenerator?branch=master)

## Developer Test

Create a password generator that, in a language of your choice, will create a secure password.The password generator should have the following signature:String generatePassword(int length, boolean uppercase, boolean lowercase, boolean number, boolean special)(This is java syntax but you should be able extrapolate to your language of choice)
Where:
length is the length of the returned string
uppercase    is    whether    to    include    uppercase characters  A -Z  
lowercase  is  whether  to  include lowercase  characters  a -z  
number  is  whether  to include 0 –9
special is whether to include the following keyboard characters ``!$%&*@^`` 

Raise/return an error if the rules given can never be alid.The solution should be self-contained with no dependencies on external libraries/services that could generate a password.Ensure you produce production-ready code to the best of your abilities. Write a short document describing any issues you encountered developing this.

## User Stories

```
As a user,
So that I have a secure password,
I would like my password to have a predefined length

As a user,
So that I have a secure password,
I want to be able to include lowercase letters in my password

As a user,
So that I have a secure password,
I want to be able to include uppercase letters in my password

As a user,
So that I have a secure password,
I want to be able to include lowercase letters in my password

As a user,
So that I have a secure password,
I want to be able to include numbers in my password

As a user,
So that I have a secure password,
I want to be able to include !$%&*@^ in my password

``` 