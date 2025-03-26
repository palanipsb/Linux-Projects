#! /bin/bash

#quotes Practice
variable="Hello World"
echo "Double quotes: $variable"
echo 'Single Quotes: $variable'
echo No quotes: $variable
echo "Both quotes: '$variable'"

#escaping variables
special_char="\$"
echo "variable: $special_char"