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
#Add sagemath to path
export PATH="/Applications/SageMath-9.2.app/:$PATH"
#Add user applications to path
export PATH="$HOME/Applications/:$PATH"
#Add Mac OS Local to path
export PATH=/Users/np/.local/bin:$PATH
#Add cargo for rust to path
export PATH=/Users/np/.cargo/bin:$PATH


export JUNIT_HOME="/Applications/junit4.10"
export CLASSPATH=$CLASSPATH.:$JUNIT_HOME/junit-4.10.jar
export CLASSPATH=$CLASSPATH:/Applications/hamcrest-core-1.3.jar

# change GNU readline input to vi keybindings
set -o vi
