cp bash_aliases.sh ~/.bash_aliases
cp bash_profile.sh ~/.bash_profile
cp init.sage ~/.sage/init.sage
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
rm -r ~/.vim/ftplugin/
mkdir ~/.vim/ftplugin/
cp ./vim_filetype_plugins/* ~/.vim/ftplugin/
