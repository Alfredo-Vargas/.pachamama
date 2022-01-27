#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ ' # so your username does not appear

export PATH=$PATH:~/.emacs.d/bin

export PS1="\W \$"
alias config='/usr/bin/git --git-dir=/home/alfredo/projects/my_dotfiles --work-tree=/home/alfredo'
alias cd..='cd ..'
alias t6='~/projects/scripts/t2x3'
alias t4='~/projects/scripts/t2x2'
alias t2='~/projects/scripts/t1x2'
alias t32='~/projects/scripts/t3x2'
alias wiki='nvim ~/projects/wiki'
alias tm='cd ~/MEGA/Alfredo/thomas_more/studies_2021_2022'

# set -o vi

