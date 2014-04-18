#!/bin/bash
#program:
#	cp to USCstudy
#History:
#	No
#04/18/2014		Chen 	v1.0
PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~/bin
ls

read -p "filename: " file_name
read -p "which course?: " course
 
ls /media/34B4DE90B4DE53C8/USCstudy/$course

read -p "which folder?: " category

mv /home/neil/Downloads/$file_name /media/34B4DE90B4DE53C8/USCstudy/$course/$category

ls /media/34B4DE90B4DE53C8/USCstudy/$course/$category
