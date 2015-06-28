#!/bin/bash

#name and email
git config --global user.name "Chen Xie"
git config --global user.email "xcmickey@gmail.com"

#add more information when conflict happens
git config --global alias.conflicts "diff --name-only --diff-filter=U"
