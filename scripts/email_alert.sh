#!/bin/bash
MAX=95
EMAIL=abdul07.infotech@gmail.com
PART=sda1
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`
if [ $USE > $MAX ]
 then
  echo "Percent used: $USE" | mail -s "Running out of disk space" $EMAIL
fi
