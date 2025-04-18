#!/bin/bash
# Git Repository Backup Script: Write a script to backup Git repositories by cloning them to a backup 

# Declare Variables
git_repo="https://gitrepourl"
backupdir="/path/to/backups"

git clone --mirror "$git_repo" "$backupdir/repo.git"