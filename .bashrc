#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias fd='fd -H'
# PS1 is the variable that indicates the prompt symbol
# PS1='[\u@\h \W]\$ ' # so your username does not appear
# \d the current date; \e escape char; \h hostname; \n newline; \t current time; \T 12 hour time \@ 12 hour time am/pm; \u username; \w path of cwd;
PS1="\W\$ " # so your username does not appear
# PS2 is the secondary prompt
export PS1;
export PATH=$PATH:~/.emacs.d/bin
export DOTFILES=$HOME/.pachamama

# alias config='/usr/bin/git --git-dir=/home/alfredo/projects/my_dotfiles --work-tree=/home/alfredo'
alias cd..='cd ..'
alias t6='~/projects/scripts/t2x3'
alias t4='~/projects/scripts/t2x2'
alias t2='~/projects/scripts/t1x2'
alias t32='~/projects/scripts/t3x2'
alias wiki='nvim ~/projects/wiki'
alias tm='cd ~/MEGA/Alfredo/thomas_more/studies_2021_2022'

# set -o vi

. "$HOME/.cargo/env"
