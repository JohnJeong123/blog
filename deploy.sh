#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
echo "> Building project"
cd /Users/John/Documents/WorkSpace/blog/

hugo -t hermit

# Go To Public folder
echo "> Going to Public folder"
cd public

# Add changes to git.
echo "> Adding changes to git"
git add .

# Commit changes.
echo "> Commiting changes"
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
echo ">Pushing source"
git push origin master

# Come Back up to the Project Root
echo ">Coming back up to the project root"
cd ..


# blog 저장소 Commit & Push
echo ">blog 저장소에 Commit & Push"
git add .

 msg="rebuilding site `date`"
 if [ $# -eq 1 ]
   then msg="$1"
 fi
 git commit -m "$msg"

 git push origin master
echo ">완료!"
