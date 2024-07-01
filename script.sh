#!/bin/bash

show_date(){
 echo "$(date)"
}

create_logs(){
  local -i max=${1:-100}
  for i in $(seq 1 $max);
  do
    echo "log${i}.txt $0 $(date)" > "log${i}.txt"
  done
}

case "$1" in
  --date)
    show_date
  ;;
  --logs)
    if [ ! -z $2 ];
    then
      create_logs $2
    else
      create_logs
    fi
      ;;
esac
