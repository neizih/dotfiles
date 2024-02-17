#!/bin/bash 

printf "$$" > ~/.cache/barId

update_status(){ 
	today=$(date "+%a %b %d")
	time=$(date "+%H:%M")
	kb_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
	volume=$(pamixer --get-volume)
	
	layout="Layout [$kb_layout] - Time [$time] - Date [$today] - Volume [$volume%]"
}

update_status

trap "update_status" "RTMIN"

while true; do 
	update_status
	current_second=$(date '+%S')
	xsetroot -name " $layout "

	sleep "$(( 60 - $current_second ))"
done 
