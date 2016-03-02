#!/bin/sh
git init 
echo "Commit inicial">README.txt
git add .
git commit -m "Commit inicial"
git remote add origin $URL
git branch dev
git branch test
git push origin master
git push origin dev
git push origin test