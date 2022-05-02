RED='\033[0;31m'
YELLOW='\033[1;33m'
print_color() {
    printf "$1$2${NC}\n"
}
vrm () {
    if [[ -e "$1" ]]; then
        rm "$1"
        print_color "${RED}" "Removed \"$1\""
    else
        print_color "${YELLOW}" "Did not remove \"$1\""
    fi
}
#vrm "$HOME/.bash_prompt"
#vrm "$HOME/.tmux_profile.conf"
vrm "$HOME/.bash_aliases"
vrm "$HOME/.bash_profile"
vrm "$HOME/.os.txt"
vrm "$HOME/.sage/init.sage"
vrm "$HOME/.sage/ipython-5.0.0/profile_default/ipython_config.py"
vrm "$HOME/.tmux.conf"
vrm "$HOME/.vim/filetype.vim"
vrm "$HOME/.vim/ftplugin/java.vim"
vrm "$HOME/.vim/ftplugin/python.vim"
vrm "$HOME/.vim/ftplugin/sh.vim"
vrm "$HOME/.vim/ftplugin/tex.vim"
vrm "$HOME/.vim/ftplugin/vim.vim"
vrm "$HOME/.vim/syntax/quote.vim"
vrm "$HOME/.vim/syntax/scene.vim"
vrm "$HOME/.vim/syntax/tex.vim"
vrm "$HOME/.vimrc"
