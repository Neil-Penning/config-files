RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

COLOR_CREATE=$ORANGE
COLOR_BAD=$RED
COLOR_OCCUR=$YELLOW
COLOR_GOOD=$GREEN

print_color() {
    printf "$1$2${NC}\n"
}
print_create() {
    print_color $COLOR_CREATE "$1"
}
print_bad() {
    print_color $COLOR_BAD "$1"
}
print_good() {
    print_color $COLOR_GOOD "$1"
}
print_occur() {
    print_color $COLOR_OCCUR "$1"
}
vmkdir () {
    if ! [[ -d "$1" ]]; then
        mkdir -p "$1"
        print_create "Made directory \"$1\""
    fi
}
vcp () {
    if [[ -d "$1" ]] ; then
        print_bad "Cannot copy the directory \"$1\""
    elif [[ -d "$2" ]] ; then
        print_bad "Cannot copy to the dirctory \"$2\""
    elif ! [[ -e "$2" ]] ; then 
        print_create "Creating: \"$1\" -> \"$2\""
        cp "$1" "$2"
    elif ! cmp --silent "$1" "$2" ; then 
        print_occur "Copying: \"$1\" -> \"$2\""
        cp "$1" "$2"
     else
         print_good "No Change: \"$2\""
    fi
}
if ! [[ -f ./os.txt ]]; 
then
    print_bad "FAILED: set OS type in $HOME/config-files/os.txt";
    exit 1;
else
    vcp ./os.txt $HOME/.os.txt
fi

#Bash files
    if ! [[ -e  $HOME/.bash_prompt ]];
    then
        vcp ./prompts/default/bash_prompt $HOME/.bash_prompt
    fi
    vcp bash_aliases.sh ~/.bash_aliases
    vcp bash_profile.sh ~/.bash_profile

# Sage
    vmkdir "$HOME/.sage/"
    vcp init.sage ~/.sage/init.sage
    vmkdir "$HOME/.sage/ipython-5.0.0/profile_default/"
    vcp ./ipython_config.py $HOME/.sage/ipython-5.0.0/profile_default/ipython_config.py

# Vim 
    vcp vimrc ~/.vimrc
    vmkdir "$HOME/.vim/"
    vmkdir "$HOME/.vim/ftplugin/"
    vcp ./vim/filetype.vim $HOME/.vim/filetype.vim

    # TODO make vcp support folder copying

    #ftplugin
    vcp ./vim/ftplugin/python.vim   ~/.vim/ftplugin/python.vim
    vcp ./vim/ftplugin/tex.vim      ~/.vim/ftplugin/tex.vim
    vcp ./vim/ftplugin/java.vim     ~/.vim/ftplugin/java.vim
    vcp ./vim/ftplugin/sh.vim       ~/.vim/ftplugin/sh.vim
    vcp ./vim/ftplugin/vim.vim      ~/.vim/ftplugin/vim.vim
    #syntax
    vcp ./vim/syntax/scene.vim    ~/.vim/syntax/scene.vim
    vcp ./vim/syntax/quote.vim    ~/.vim/syntax/quote.vim

    # make vim syntax directory if it doesn't exist
    vmkdir "$HOME/.vim/syntax/"
    vcp ./vim/syntax/scene.vim   ~/.vim/syntax/scene.vim
    # copy syntax file from vim-tex-syntax if submodule is included
    if [[ -e ./vim/vim-tex-syntax/syntax/tex.vim ]]; then
        vcp ./vim/vim-tex-syntax/syntax/tex.vim $HOME/.vim/syntax/tex.vim;
    else
        print_bad "./vim/vim-tex-syntax does not exist"
    fi

# Tmux
    vcp tmux.conf $HOME/.tmux.conf
    if ! [[ -e  $HOME/.tmux_profile.conf ]]; then
        vcp ./prompts/default/tmux_profile.conf $HOME/.tmux_profile.conf
    fi
    ~/.tmux/plugins/tpm/bin/install_plugins

if ! [[ -f $HOME/.ssh/config ]]; then
    print_occur "Copying ssh config file";
    vcp ssh_config "$HOME/.ssh/config"
fi
