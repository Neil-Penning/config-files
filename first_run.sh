if ![ -f ./config-files/os.txt ]; 
then
    echo "FAILED: set OS type in ~/config-files/os.txt"
    exit 1
fi

# Always make the following directories
mkdir ../.vim/
mkdir ../.vim/ftplugin
mkdir ../.sage
mkdir -p ../.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


if grep -Fxq fedora os.txt; then
  echo "OS detected as fedora" # SomeString was found
  # https://itsfoss.com/install-vlc-fedora/
  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 
  sudo dnf install -y vim nnn gem python3-pip vlc
  sudo gem install tmuxinator
  pip install medipack bdfr
fi

if grep -Fxq macos os.txt; then
    echo "OS detected as macos" # SomeString was found
    chsh -s /bin/bash # changes default shell to bash
    # Install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install tmux tmuxinator youtube-dl ffmpeg blueutil
    sudo python3 -m pip install medipack bdfr
fi

if grep -Fxq rpi os.txt; then
    echo "OS detected as rpi" # SomeString was found
    sudo apt-get install vim tmux tmuxinator youtube-dl ffmpeg transmission nnn
fi
