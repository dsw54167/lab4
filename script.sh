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

init(){
  repo_url="https://github.com/dsw54167/lab4.git"
  git clone "$repo_url" repo
  export PATH=$(pwd):$PATH
	echo $PATH
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
  --init)
    init
  ;;
  --help| -h)
    show_help
  ;;
esac
