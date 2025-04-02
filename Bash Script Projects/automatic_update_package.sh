#!/bin/bash

# Update system packages and clean up unneccessary packages
sudo apt-get update && sudo apt-get upgrade -y & sudo apt-get autoremove -y $$ sudo apt-get clean