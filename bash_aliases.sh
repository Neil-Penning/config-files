if grep -Fxq macos $HOME/config-files/os.txt; then
    alias ls="ls -GF"
fi
if grep -xq 'fedora\|rpi' $HOME/config-files/os.txt; then
    alias ls="ls --color"
fi
ltx="$HOME/Documents/LaTeX/"


alias glagd="git log --all --graph --decorate"
alias glagod="git log --all --graph --decorate --oneline"
alias gs="git status"

# Use ISO time for ts (timestamp)
alias ts='ts "%Y-%m-%dT%H:%M:%S"'


alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

alias createsections='python3 ~/Applications/createsections.py'
alias z3='~/Applications/z3'

alias sage="/Applications/SageMath-9.2.app/sage"

alias checkjava="java -jar $ltx/GT-CS-1332/checkstyle-8.12-all.jar -c $ltx/GT-CS-1332/CS1332-checkstyle.xml"

alias mux="tmuxinator"

alias yt-dl="youtube-dl"
# https://askubuntu.com/a/856913
alias yt-dl-channel='youtube-dl -f best -ciw -o "%(title)s.%(ext)s" -v'

alias mvcol="find . -mindepth 2 -type f -print -exec mv {} . \;"

alias topssh='top -pid $(pgrep ssh | tr "\n" "," | sed "s/,/ -pid /g") 0'

#Only open files on "enter"
alias nnn='nnn -o'
alias junittest="java org.junit.runner.JUnitCore"
