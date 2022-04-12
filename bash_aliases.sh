if grep -Fxq macos $HOME/.os.txt; then
    alias ls="ls -GF"
fi
if grep -xq 'fedora\|rpi' $HOME/.os.txt; then
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

# switch to a session called "base"; wherever you are
alias tb="if [ -n \"$TMUX\" ]; then tmux has-session -t base || tmux new-session -d -s base; tmux switch-client -t base; else tmux new-session -A -s base; fi"
# # Breakdown:
# if [ -n \"$TMUX\" ]; then 
#     # TMUX client is running
#     # If there is no session called base, create one.
#     tmux has-session -t base || tmux new-session -d -s base;
#     # Change to session named base
#     tmux switch-client -t base;
# else 
#     # TMUX client is not running
#     # Create a new session called base
#     # The flag (-A) says if base already exists, attach to it.
#     tmux new-session -A -s base;
# fi

alias bw-unlock='export BW_SESSION="$(bw unlock --raw)"'
