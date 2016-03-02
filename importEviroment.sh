#!/bin/sh
git init 
git remote add origin $URL
git pull origin master
if [ `git branch --list dev `]
then
	echo "Branch name dev already exists."
else
	git branch dev
fi

if [ `git branch --list test `]
then
	echo "Branch name test already exists."
else
	git branch test
fi
git checkout dev
git pull origin dev
git checkout test
git pull origin test
