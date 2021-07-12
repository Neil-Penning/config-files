chsh -s /bin/bash # changes default shell to bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# installs tmux-plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install youtube-dl
