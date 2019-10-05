#!/usr/bin/env bash

echo "delete git remote"
git remote remove origin

read -p "delete and create new git repo (y/n): " _input_git
if [ $_input_git == "y" ] || [ -z "$_input_git" ]
then
  echo "delete existing git repo"
  sudo rm -R .git
  
  echo "initialize git repo"
  git init

  echo "initial git commit"
  git add .
  git commit -m"initial commit"
else
  echo "aborted deleting git repo"
fi

echo "use node version through nvm"
nvm use

_bs=browser-sync
echo "check if $_bs is installed globally"

if npm list -g --depth=0 | grep -q  $_bs
then
  echo "$_bs is installed globally"
else
  npm install -g $_bs
fi

echo "initialize the project"
npm init

read -p "continue installation after init (y/n): " _input_install
if [ $_input_install == "y" ]  || [ -z "$_input_install" ]
then
  echo "install the project"
  npm install
else
  echo "aborted installation"
fi

read -p "add 7-1 sass sturcture (y/n): " _input_sass
if [ $_input_sass == "y" ]  || [ -z "$_input_sass" ]
then
  echo "clone 7-1"
  git clone https://github.com/HugoGiraudel/sass-boilerplate.git

  if [ -d "./sass-boilerplate" ]
  then
    echo "move sass-boilerplate to public/sass"
    mv ./public/sass/ ./public/sass.bcp
    mv ./sass-boilerplate/stylesheets ./public/sass
    rm -rf ./sass-boilerplate

  else
    echo "sass-boilerplate does not exist or there is already a public/sass directory"
  fi

else
  echo "aborted cloning 7-1"
fi

read -p "commit installed project (y/n): " _input_git
if [ $_input_git == "y" ] || [ -z "$_input_git" ]
then

  echo "commit installed project"
  git add .
  git commit -m"commit installed project"
else
  echo "aborted git"
fi

echo "----- YOUR PROJECT IS READY ------"
