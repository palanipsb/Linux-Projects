#! /bin/bash

#String manupulation practice

#string concatination
string1="hello, "
string2="world"
result=$string1$string2
echo $result

#string extract
string="hello, world"
substr=${string:7:5}
echo $substr

#search and replace
string="Hello world! Hello!"
search="Hello"
replace="Hi"
result=${string//$search/$replace}
echo "original string: $string"
echo "Replaced string: $result"