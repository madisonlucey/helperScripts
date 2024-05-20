#!/bin/bash
# Developer Madison Rose Lucey 5/20/2024
# Takes first arg as the repoName and the remaining args as the commit message.  
# Example use is as follows: ./commitChanges.sh helperScripts create Repo script
# Execute this script from the Desktop directory

repoName=$1 #repo name from command line input
shift $(expr $OPTIND - 1 ) && shift
commitMessage=$@ 
cd $repoName
git add .
git commit -m "$commitMessage"
git push 

