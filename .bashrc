#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#make st nice
alias load="kill -USR1 $(pidof st)"
alias  use="xrdb merge"

PS1='[\u@\h \W]\$ '


export PATH="~/.local/bin:$PATH"
source "$HOME/.cargo/env"
eval "$(starship init bash)"
