#!/bin/bash
# Developer Madison Rose Lucey 5/20/2024
# Creates a directory, a local GitHub repo, a corresponding Github.com repo, and does the initial commit. 
# Execute this script from the Desktop directory

repoName=$1 #repo name from command line input
mkdir $repoName && cd $repoName
gh repo create $repoName --private
touch  test.txt
git init
git add .
git commit -m "initial commit message"
git remote add origin git@github.com:madisonlucey/$repoName.git
git push --set-upstream origin main 

# pre reqs for this script to work are setting the configurations:
# git config --global user.email "<email>"
# git config --global user.name "<username>" 
# git config --global init.defaultBranch main 



