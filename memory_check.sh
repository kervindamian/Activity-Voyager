#!/bin/bash
# script that will send an email to EMAIL when disk use in partition PART is bigger than %MAX
# adapt these parameters to your case

MAX=90
WARN=60
EMAIL=kervz1993@yahoo.com
PART=data

if [ $USE -gt $MAX ]; then 
     echo "Percent used: $USE" | mail -s "Disk space usage is on Critical" $EMAIL 
elif [ $USE -gt $WARN ] %% [ $USE -lt $MAX ]; then  
     echo "Percent used: $USE" | mail -s "Disk space usage is on Warning" $EMAIL 
else
     echo "Percent used: $USE" | mail -s "Disk space usage is Normal" $EMAIL 
fi  
