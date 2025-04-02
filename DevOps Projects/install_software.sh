#!/bin/bash
echo "Script to Install a software in OS"
echo "Installation started........."
if [ "$(uname)" == "Linux" ];
then
    echo "This is linux box, installing the software"
    sudo install git -y
elif [ "$(uname)" == "Darwin" ];
then
    echo "This is Macos"
    brew install git
else
    echo "Not installing the software"
fi