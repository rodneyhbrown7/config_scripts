#!/bin/bash

go_into_new_dir(){
  mkdir --parents "$1"
  cd "$1"
}

find_file_in(){
  if [ "$2" != "" ]; then
    find "$2" -name "$1"
  else
    find .  -name "$1"
  fi
}

alias gb='cd "$OLDPWD"'
alias h="history | grep"
alias mkdir="mkdir -pv"
alias newdir=go_into_new_dir
alias rm="rm -v"
alias tree="tree -L 3"
alias ltree="tree -DhQpu --du -L 3"
alias vi="vim"
alias find=find_file_in

