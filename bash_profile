if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
export BASH_SILENCE_DEPRECATION_WARNING=1

#Make Prompt Red
export PS1="\e[0;31m[\u:\W]\$ \e[0m"

