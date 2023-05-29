#!/bin/bash

to=$(mounika.matle@gmail.com)

thr=800

mymem=free -mt | grep "Total" awk '{print $3}'

if [ $mymem > $thr ]

then

echo -e "The used memory is $mymem \n Please check on it" | mail -s "Notification" $to

fi
