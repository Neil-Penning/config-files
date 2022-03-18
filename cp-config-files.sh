if ![ -f ./config-files/os.txt ]; 
then
    echo "REMINDER: you should set OS type in $HOME/config-files/os.txt"
fi

#Bash files
    cp bash_aliases.sh ~/.bash_aliases
    cp bash_profile.sh ~/.bash_profile

# Sage
    [ -d $HOME/.sage/ ] || (mkdir -p $HOME/.sage/; echo "made directory $HOME/.sage")
    cp init.sage ~/.sage/init.sage
    [ -d $HOME/.sage/ipython-5.0.0/profile_default/ ] || (mkdir -p $HOME/.sage/ipython-5.0.0/profile_default/; echo "made directory $HOME/.sage/ipython-5.0.0/profile_default/")
    cp ./ipython_config.py $HOME/.sage/ipython-5.0.0/profile_default/

# Vim 
    cp vimrc ~/.vimrc
    [ -d $HOME/.vim/ftplugin ] || (mkdir -p $HOME/.vim/ftplugin; echo "made directory $HOME/.vim/ftplugin")
    cp ./filetype.vim $HOME/.vim/
    cp ./vim_filetype_plugins/* ~/.vim/ftplugin/
    # make vim syntax directory if it doesn't exist
    [ -d $HOME/.vim/syntax ] || (mkdir -p $HOME/.vim/syntax; echo "made directory $HOME/.vim/syntax")
    # copy syntax file from vim-tex-syntax if submodule is included
    if [ -e ./vim-tex-syntax/syntax/tex.vim ];
    then
        cp ./vim-tex-syntax/syntax/tex.vim $HOME/.vim/syntax;
    else
        echo "./vim-tex-syntax does not exist"
    fi


# Tmux
    cp tmux.conf ~/.tmux.conf
    ~/.tmux/plugins/tpm/bin/install_plugins

if ! [ -f $HOME/.ssh/config ]; 
then
    echo "Copying ssh config file";
    cp ssh_config "$HOME/.ssh/config"
fi
