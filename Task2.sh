#! /bin/bash
env > env_vars.json
env | grep PLACEHOLDER > PLACEHOLDER-vars.json
git init
git add .
git commit -m "PLACEHOLDER Variables Selected"
git branch -M main
git remote add origin https://github.com/amir-akhavans/M-files.git
git push -u origin main