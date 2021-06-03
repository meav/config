#!/bin/bash

echo -e "\n\e[1m\e[38;5;002mTimer\e[0m"
re='^[0-9]+$'
sleep 30
/home/meav/.bin/timer/nircmdc.exe win activate title Timer
sleep 5
/home/meav/.bin/timer/nircmdc.exe win activate title Timer
while true; do
echo;
now=$(date +'%r - %A, %d-%m-%Y');
echo $now;
echo;
read -p "Minute? " min;
	if [[ "$min" == "quit" ]]; then 
		echo "00:00:00" > ~/.timer
		break;
	elif [[ -z $min ]] || ! [[ $min =~ $re ]] ; then
		echo -e "\n\e[1m\e[38;5;196mWrong!\e[0m";
	else
		echo;
		echo $'\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\eD\e[25A'
		hour=0
		sec=0
		        while [ $hour -ge 0 ]; do
		                 while [ $min -ge 0 ]; do
		                         while [ $sec -ge 0 ]; do
						time=$(printf "%02d:%02d:%02d\n" $hour $min $sec)
		                                echo -ne "$time\033[0K\r"
		                                let "sec=sec-1"
						echo "$time" > ~/.timer
		                                sleep 1
		                         done
		                         sec=59
		                         let "min=min-1"
		                 done
		                 min=59
		                 let "hour=hour-1"
		         done
		echo
		msg Administrator /time:30 " "
		sleep 30
		/home/meav/.bin/timer/nircmdc.exe win activate title Timer
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
		tput setab 034
		tput setaf 007
		tput clear
		while [ $hour -ge 0 ]; do
		    while [ $min -ge 0 ]; do
		        while [ $sec -ge 0 ]; do
		            if [ "$hour" -eq "0" ] && [ "$min" -eq "0" ] && [ "$sec" -le "30" ]; then
		                tput setab 196
		                tput setaf 007
		                tput clear
				/home/meav/.bin/timer/nircmdc.exe win activate title Timer
		            fi
		            tput cup 7 0
			    figlet -d /home/meav/.bin/figlet_fonts -f univers -ctk "$(printf '  %02d : %02d  ' $min $sec)"
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
