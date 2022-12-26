#! /bin/bash

# $0 = thing passed to bitwarden
# $1 = tmux target pane

#check for bitwarden session token

# check if tmux target pane was passed


if [ $# == 1 ]; then
    TARGET_PANE=0
elif [ $# == 2 ]; then
    TARGET_PANE=$2
else
    #throw error
    echo problem
fi

tmux send-keys -t $TARGET_PANE $(bw get password $1) Enter
tmux select-pane -t $TARGET_PANE
