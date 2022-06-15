#! /bin/bash
env > env_vars.txt
jq -Rs '[ split("\n")[] | select(length > 0) 
          | split(",") | {FrameworkName: .[0] ]' env_vars.txt > 1.json
env | grep PLACEHOLDER > PLACEHOLDER-vars.txt
git init
git add .
git commit -m "PLACEHOLDER Variables Selected"
git branch -M main
git remote add origin https://github.com/amir-akhavans/M-files.git
git push -u origin main