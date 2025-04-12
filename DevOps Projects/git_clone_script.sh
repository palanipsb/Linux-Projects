#!/bin/bash
# Git clone and add files and push changes to Repo
# GITPAT and GITUSER is Environment variables that has to be set in terminal

#Declare variables
BRANCH="main"
ORIGIN="https://$GITPAT@github.com/$GITUSER/testrepo.git"

# Clone code and add files
git clone $ORIGIN
git branch -M $BRANCH
touch file1
touch file2
git add .
git commit -m "New files file1 and file1 added"
git push $ORIGIN main