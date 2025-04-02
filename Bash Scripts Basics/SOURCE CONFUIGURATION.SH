#!/bin/bash
#Sourcing configuration file practice

#Configuration settings for config.sh file
DB_HOST="localhost"
DB_PORT="3306"
DB_USER="myuser"
DB_PASSWORD="pass"

#main.sh file
#!/bin/bash

#Source the configuraion file
source config.sh

#Now you are use the variables from the configuration file
echo "Database Host: $DB_HOST"
echo "Database Port: $DB_PORT"
echo "Database User: $DB_USER"
echo "Database Password: $DB_PASSWORD"
