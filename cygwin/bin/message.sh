#!/bin/bash

cmd /c start "" "%CYGWIN_ROOT%\home\root\bin\nircmdc.exe" win activate title Message
while true; do
echo;
now=$(date +'%r - %A, %d-%m-%Y');
echo $now;
echo;
echo $'\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\e[25A'
read -p "Minute? " min;
	if [ $min == quit ]; then 
		break;
	else
		echo;
		hour=0
		sec=0
		        while [ $hour -ge 0 ]; do
		                 while [ $min -ge 0 ]; do
		                         while [ $sec -ge 0 ]; do
		                                 echo -ne "$hour:$min:$sec\033[0K\r"
		                                 let "sec=sec-1"
						 echo "$hour:$min:$sec" > ~/.timer
		                                 sleep 1
		                         done
		                         sec=59
		                         let "min=min-1"
		                 done
		                 min=59
		                 let "hour=hour-1"
		         done
		echo
		cmd /c start "" "%CYGWIN_ROOT%\home\root\bin\nircmdc.exe" win activate title Message
		cmd /c start "" msg vhd /time:180 " "
fi
done;
