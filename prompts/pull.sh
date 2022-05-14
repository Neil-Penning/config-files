hostname=$(cat /etc/hostname | tr --delete '\n')
mkdir -p "./$hostname"
cp ~/.bash_profile "./$hostname/bash_prompt"
cp ~/.tmux_profile.conf "./$hostname/tmux_profile.conf"
