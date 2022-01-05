if [ -f ~/.bash_aliases ]; 
then
    . ~/.bash_aliases
fi

# for tmuxinator
export EDITOR='vim'

# https://unix.stackexchange.com/questions/408413/change-default-editor-to-vim-for-sudo-systemctl-edit-unit-file
export SYSTEMD_EDITOR='vim'

export BASH_SILENCE_DEPRECATION_WARNING=1


#https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#check for .bash_prompt file, prefer to use one locally
if [ -f ~/.bash_prompt ]; 
then
    # if there is one, run that.
    . ~/.bash_prompt
else
    # otherwise, make the prompt red
    export PS1="\e\[[0;31m[\]\u:\W]\$ \e\[[0m\]"
fi

#Add homebrew to path
export PATH="/opt/homebrew/bin/:$PATH"

# change GNU readline input to vi keybindings
set -o vi
