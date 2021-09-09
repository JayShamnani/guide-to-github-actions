#!/bin/bash

apt update && apt install git -y

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

cd $GITHUB_WORKSPACE

touch "example.txt"


echo "You are doing awesome !" > example.txt

git checkout -b $BRANCH_NAME

git add .

git commit -m "$COMMIT_MESSAGE"

git push origin $BRANCH_NAME

echo "Hey There"

echo "This script is made possible by $deployment_env"

echo "This script is made possible by $github_secret"