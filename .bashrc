#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias exa='exa -hl'
alias update='sudo pacman -Syu --noconfirm'
alias install='sudo pacman -Sy'


#make st nice
alias load="kill -USR1 $(pidof st)"
alias  use="xrdb merge"

PS1='[\u@\h \W]\$ '


export PATH="~/.local/bin:$PATH"
export PATH=$PATH:/path/to/driver/chrome-driver
export PICO_SDK_PATH=../pico-sdk
source "$HOME/.cargo/env"
