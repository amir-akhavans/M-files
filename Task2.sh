#! /bin/bash
env > env_vars.txt
jq -Rs '[ split("\n")[] | select(length > 0) 
          | split(",") | {FrameworkName: .[0]} ]' env_vars.txt > env_vars.json
env | grep PLACEHOLDER > PLACEHOLDER-vars.txt
jq -Rs '[ split("\n")[] | select(length > 0) 
          | split(",") | {FrameworkName: .[0]} ]' PLACEHOLDER-vars.txt > PLACEHOLDER-vars.json
git init
git add .
git commit -m "Variables"
git branch -M main
git remote add origin https://github.com/amir-akhavans/M-files.git
git push -u origin main