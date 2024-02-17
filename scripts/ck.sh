#!/bin/bash

current_keyboard=$(setxkbmap -query | grep us | awk '{print $2}')

if [[ $current_keyboard == "us" ]]; then 
	setxkbmap latam
else 
	setxkbmap us
fi
