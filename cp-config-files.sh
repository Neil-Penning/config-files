cp bash_aliases.sh ~/.bash_aliases
cp bash_profile.sh ~/.bash_profile
cp init.sage ~/.sage/init.sage
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
rm -r ~/.vim/ftplugin/
mkdir ~/.vim/ftplugin/
cp ./filetype.vim $HOME/.vim/
cp ./vim_filetype_plugins/* ~/.vim/ftplugin/

~/.tmux/plugins/tpm/bin/install_plugins

if ! [ -f $HOME/.ssh/config ]; 
then
    echo "Copying ssh config file"
    cp ssh_config "$HOME/.ssh/config"
fi
