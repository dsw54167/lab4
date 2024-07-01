#!/bin/bash

show_date(){
 echo "$(date)"
}

case "$1" in
	--date)
		show_date
		;;
esac
