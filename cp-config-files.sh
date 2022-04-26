vcp () {
    if [[ -d "$1" ]] ; then
        echo "Cannot copy the directory \"$1\"";
    elif [[ -d "$2" ]] ; then
        echo "Cannot copy to the dirctory \"$2\""
    elif ! [[ -e "$2" ]] ; then 
        echo "Creating: \"$1\" -> \"$2\""
        cp "$1" "$2"
    elif ! cmp --silent "$1" "$2" ; then 
        echo "Copying: \"$1\" -> \"$2\""
        cp "$1" "$2"
    # else
    #     echo "Not copied : \"$1\" -> \"$2\""
    fi
}
if ! [ -f ./os.txt ]; 
then
    echo "FAILED: set OS type in $HOME/config-files/os.txt";
    exit 1;
else
    vcp ./os.txt $HOME/.os.txt
fi

#Bash files
    if ! [ -e  $HOME/.bash_prompt ];
    then
        vcp ./prompts/default/bash_prompt $HOME/.bash_prompt
    fi
    vcp bash_aliases.sh ~/.bash_aliases
    vcp bash_profile.sh ~/.bash_profile

# Sage
    [ -d $HOME/.sage/ ] || (mkdir -p $HOME/.sage/; echo "made directory $HOME/.sage")
    vcp init.sage ~/.sage/init.sage
    [ -d $HOME/.sage/ipython-5.0.0/profile_default/ ] || (mkdir -p $HOME/.sage/ipython-5.0.0/profile_default/; echo "made directory $HOME/.sage/ipython-5.0.0/profile_default/")
    vcp ./ipython_config.py $HOME/.sage/ipython-5.0.0/profile_default/ipython_config.py

# Vim 
    vcp vimrc ~/.vimrc
    [ -d $HOME/.vim/ftplugin ] || (mkdir -p $HOME/.vim/ftplugin; echo "made directory $HOME/.vim/ftplugin")
    vcp ./vim/filetype.vim $HOME/.vim/filetype.vim

    # TODO make vcp support folder copying
    vcp ./vim/ftplugin/python.vim   ~/.vim/ftplugin/python.vim
    vcp ./vim/ftplugin/tex.vim      ~/.vim/ftplugin/tex.vim
    vcp ./vim/ftplugin/java.vim     ~/.vim/ftplugin/java.vim
    vcp ./vim/ftplugin/sh.vim       ~/.vim/ftplugin/sh.vim
    vcp ./vim/ftplugin/vim.vim      ~/.vim/ftplugin/vim.vim
    # vcp ./vim/ftplugin/scene.vim    ~/.vim/ftplugin/scene.vim

    # make vim syntax directory if it doesn't exist
    [ -d $HOME/.vim/syntax ] || (mkdir -p $HOME/.vim/syntax; echo "made directory $HOME/.vim/syntax")
    vcp ./vim/syntax/scene.vim   ~/.vim/syntax/scene.vim
    # copy syntax file from vim-tex-syntax if submodule is included
    if [ -e ./vim/vim-tex-syntax/syntax/tex.vim ];
    then
        vcp ./vim/vim-tex-syntax/syntax/tex.vim $HOME/.vim/syntax/tex.vim;
    else
        echo "./vim/vim-tex-syntax does not exist"
    fi

# Tmux
    vcp tmux.conf $HOME/.tmux.conf
    if ! [ -e  $HOME/.tmux_profile.conf ];
    then
        vcp ./prompts/default/tmux_profile.conf $HOME/.tmux_profile.conf
    fi
    ~/.tmux/plugins/tpm/bin/install_plugins

if ! [ -f $HOME/.ssh/config ]; 
then
    echo "Copying ssh config file";
    vcp ssh_config "$HOME/.ssh/config"
fi
