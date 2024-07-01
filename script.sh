#!/bin/bash

show_date(){
 echo "$(date)"
}

create_logs(){
  for i in {1..100}
  do
	  echo "log${i}.txt $0 $(date)" > "log${i}.txt"
  done
}

case "$1" in
	--date)
		show_date
		;;
	--logs)
		create_logs
		;;
esac
