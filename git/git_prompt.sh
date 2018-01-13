#!/bin/bash

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\u@\h \[\033[01;34m\]\w\[\033[01;35m\]$(parse_git_branch)\[\033[01;34m\] \$ \[\033[00m\] '
else
  PS1='\[\033[01;31m\]\u@\h \[\033[01;00m\]\w\[\033[00;33m\]$(parse_git_branch)\[\033[00m\] \$ '
fi

# SET TITLE
PROMPT_COMMAND='echo -ne "\033]0;${PWD/$HOME/~}:$(parse_git_branch)\007"'
