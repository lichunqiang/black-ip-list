#!/bin/bash

if [ ! -e "node_modules" ];then
 npm install
fi

node index
git add --all
git commit -m 'regular update'
git push origin master
