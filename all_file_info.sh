#!/bin/bash

find -type f -print0 | xargs -0 -exec ls -ld | awk '{print $5}'
#find -type f -print0 | xargs -0 -exec ls -ld
