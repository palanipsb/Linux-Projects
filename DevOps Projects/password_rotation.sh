#!/bin/bash
# Password Rotation Script: Develop a script to rotate passwords for user accounts at regular intervals

# Declare Variables
user="username"

new_password=$(openssl rand -base64 12)
echo "$user:$new_password" | chpasswd