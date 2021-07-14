if [ -f ~/.bash_aliases ]; 
then
    . ~/.bash_aliases
fi
export BASH_SILENCE_DEPRECATION_WARNING=1

#https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
export PS1="\e[0;31m[\u:\W]\$ \e[0m"

#Add homebrew to path
export PATH="/opt/homebrew/bin/:$PATH"
