#!/bin/bash
DATE=`date +%Y-%m-%d:%H:%M:%S`

#local commit
git add .
git commit -m $DATE

#merge and conflict check
git_sync.sh

#sync with online repo
git push -u origin master
