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

show_help(){
  echo -e "\n"
  echo -e "--date displays date \n"
  echo -e "--logs [N] creates N logs file (default 100) \n"
  echo -e "--help displays options \n"
}


case "$1" in
  --date| -d)
    show_date
  ;;
  --logs| -l)
    if [ ! -z $2 ];
    then
      create_logs $2
    else
      create_logs
    fi
      ;;
  --help| -h)
    show_help
  ;;
esac
