#!/bin/bash

SO="${BASH_SOURCE[0]}"
DIR=`dirname "$SO"`
cd $DIR
pwd
if [ ! -e "node_modules" ];then
 npm install
fi

node index
git add --all
git commit -m 'regular update'
git push origin master
