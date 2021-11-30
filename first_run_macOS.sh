chsh -s /bin/bash # changes default shell to bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install tmux
brew install tmuxinator
# installs tmux-plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install youtube-dl

brew install ffmpeg
sudo python3 -m pip install medipack

brew install nnn
