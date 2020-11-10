#!/bin/bash

cmd /c start "" "%CYGWIN_ROOT%\home\meav\.bin\nircmdc.exe" win activate title Message
while true; do
echo;
now=$(date +'%r - %A, %d-%m-%Y');
echo $now;
echo;
echo $'\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\e[25A'
read -p "Minute? " min;
	if [ $min == quit ]; then 
		echo "0:0:0" > ~/.timer
		break;
	else
		echo;
		hour=0
		sec=0
		        while [ $hour -ge 0 ]; do
		                 while [ $min -ge 0 ]; do
		                         while [ $sec -ge 0 ]; do
						tim=$(printf "%02d:%02d:%02d\n" $hour $min $sec)
		                                echo -ne "$tim\033[0K\r"
		                                let "sec=sec-1"
						echo "$tim" > ~/.timer
		                                sleep 1
		                         done
		                         sec=59
		                         let "min=min-1"
		                 done
		                 min=59
		                 let "hour=hour-1"
		         done
		echo
		cmd /c start "" msg vhd /time:30 " "
		sleep 30
		cmd /c start "" "%CYGWIN_ROOT%\home\meav\.bin\nircmdc.exe" win activate title Message
		cols=$( tput cols )
		rows=$( tput lines )
		middle_row=$(( ($rows /2) - 10 ))
		middle_col=$( $cols / 2 )
		hour=0
		min=2
		sec=30
		
		donso () {
		tput sgr0
		tput cup $( tput lines ) 0
		tput cnorm
		}
		
		tput clear
		tput bold
		tput civis
		while [ $hour -ge 0 ]; do
		    while [ $min -ge 0 ]; do
		        while [ $sec -ge 0 ]; do
		            if [ "$hour" -eq "0" ] && [ "$min" -eq "0" ]; then
		                tput setab 034
		                tput setaf 007
		                tput clear
		            fi
		            tput cup 7 0
		            banner "$(printf '  %02d:%02d:%02d  ' $hour $min $sec)"
			    let "sec=sec-1"
		            sleep 1
		        done
		        sec=59
		        let "min=min-1"
		    done
		    min=59
		    let "hour=hour-1"
		done
		donso
		echo;
fi
done;
