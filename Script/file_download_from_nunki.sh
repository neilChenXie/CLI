#!/bin/bash
#shell is used to download from nunki server
#program:
#		input usrname
#		input the source path after /home/.../
#		input the dest path
#04/18/2014	Chen v2.2

PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

clear

#read -p "Server Name: " server_name
read -p "usrname: " usrname
read -p "Do you need to login to see the Path of file?(y/n): " ans

if [ $ans = "y" ]
then
	ssh $usrname@nunki.usc.edu
fi

read -p "Path of the file: " file_path

clear

ls /home/neil/
echo Please choose a directory to downloads
read -p "which fold want to save?(default is Downloads): " dest_path
if [ ! -n dest_path ]
then 
	dest_path='Downloads'
fi
if [ ! -d /home/neil/$dest_path ]
then
	read -p "the destination directory is not exist,create one?(y/n)" ans
	if [ $ans = "y" ]
	then 
		mkdir /home/neil/$dest_path
		if [ -d /home/neil/$dest_path ]
		then
			echo new directory is created
		else 
			echo cannot create this dir
			exit 1
		fi
	else
		echo operation cannot be done
		exit 1
	fi
fi
echo Enter the password to access server
scp $usrname@nunki.usc.edu:/home/scf-31/$usrname/$file_path /home/neil/$dest_path
ls /home/neil/$dest_path

exit 0
