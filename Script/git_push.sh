#!/bin/bash
DATE=`date +%Y-%m-%d:%H:%M:%S`
git add .
git commit -m $DATE
git push -u origin master
