#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



#Aliases
alias ls='ls --color=auto'
alias ll='ls -lart'
PS1='[\u@\h \W]\$ '
alias pacman='sudo pacman'
alias apt-get='sudo apt-get'



#COLOR PROMPT
function bash_prompt

{
local WHITE="[33[1;37m]"
local default="[33[0;39m]"
local BRIGHTGREEN="[33[1;32m]"
local GREEN="[33[0;32m]"
local CYAN="[33[0;36m]"
local GRAY="[33[0;37m]"
local RED="[33[0;31m]"

if [ `id -u` != "0" ]; then
   PS1="${GREEN}u${CYAN}@${GREEN}h ${CYAN}w${WHITE} ${default}$ "
else
   PS1="${RED}u${CYAN}@${GREEN}h ${CYAN}w${WHITE} ${default}$ "
fi
}
