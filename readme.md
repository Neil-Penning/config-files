# First Run
In [./first_run.txt](https://github.com/Neil-Penning/config-files/blob/master/first_run.txt) I list out everything we're supposed to install.
The installation is done in [./first_run.sh](https://github.com/Neil-Penning/config-files/blob/master/first_run.sh).
In order to run, [./os.txt](https://github.com/Neil-Penning/config-files/blob/master/os.txt) must contain one of fedora macos rpi.
To copy over, run [./cp-config-files.sh](https://github.com/Neil-Penning/config-files/blob/master/cp-config-files.sh).
# Copying over files
Run [./cp-config-files.sh](https://github.com/Neil-Penning/config-files/blob/master/cp-config-files.sh).


# Different dotfiles
## bash
### bashrc
The file [./bash_profile.sh](https://github.com/Neil-Penning/config-files/blob/master/bash_profile.sh) sets several path commands, and runs different commands based on ./os.txt .
### bash prompts
The file [./bash_profile.sh](https://github.com/Neil-Penning/config-files/blob/master/bash_profile.sh) calls `~/.bash_prompt`, which is customized to the computer.
Copies of my computers prompts are stored here.
The script [./prompts/pull.sh](https://github.com/Neil-Penning/config-files/blob/master/prompts/pull.sh) will take the current computer's prompt and add it to this directory.
### bash aliases
The file [./bash_profile.sh](https://github.com/Neil-Penning/config-files/blob/master/bash_profile.sh) also runs [./bash_aliases.sh](https://github.com/Neil-Penning/config-files/blob/master/bash_aliases.sh) which is where I store my aliases.

## vim 
### vimrc
Vim's main settings are stored in [./vimrc](https://github.com/Neil-Penning/config-files/blob/master/vimrc) which is copied to `~/.vimrc`.
### ftplugin
Now, my vimscript commands for specific filetypes are stored in [./vim/ftplugin](https://github.com/Neil-Penning/config-files/blob/master/vim/ftplugin) in accordance to [vims filetype](https://vimdoc.sourceforge.net/htmldoc/filetype.html).
If a new file is added that I want to copy over, it must be manually added to [./cp-config-files.sh](https://github.com/Neil-Penning/config-files/blob/master/cp-config-files.sh).
Finally, a manual override for `*.sage` to be interpreted as a python file is included in [./vim/filetype.vim](https://github.com/Neil-Penning/config-files/blob/master/vim/filetype.vim).
### syntax
I wrote a syntax for `.scene` files and `.quote` files to help me write.
These syntax files are stored in [./vim/syntax/](https://github.com/Neil-Penning/config-files/blob/master/vim/syntax/) .
The highlight testing is stored in [./tex_test/](https://github.com/Neil-Penning/config-files/blob/master/tex_test/).

More notably, I use a fork of [vim-tex-syntax](https://github.com/gi1242/vim-tex-syntax) to manage highlighting for my LaTeX Boxes.
More on that here (TODO).
This is a subrepository, and is copied over by [./cp-config-files.sh](https://github.com/Neil-Penning/config-files/blob/master/cp-config-files.sh), which throws a warning if it was not cloned correctly.

## tmux
My beloved tmux config file is stored in [./tmux.conf](https://github.com/Neil-Penning/config-files/blob/master/tmux.conf).
My tmuxinator (aliased to `mux`) config files are stored, by computer, in [./mux/](https://github.com/Neil-Penning/config-files/blob/master/mux/).
This is temporary, and will soon be handled by a different repository.

## ipython and sage
In [./init.sage](https://github.com/Neil-Penning/config-files/blob/master/init.sage) and [./ipython_config.py](https://github.com/Neil-Penning/config-files/blob/master/ipython_config.py) are some commands for sage.
Mainly darkmode and vim keybindings.

# Config files
## ssh
Currently in [./ssh_config](https://github.com/Neil-Penning/config-files/blob/master/ssh_config), this file has a template for my ssh config.
This is not copied over by [./cp-config-files.sh](https://github.com/Neil-Penning/config-files/blob/master/cp-config-files.sh), because my own computer's version is more up to date.
Perhaps soon my actual ssh_config files will be stored in a private repo.
## qbittorrent-nox
After accidentally uplloading a secret, 

# Scripts
The directory [./scripts/](https://github.com/Neil-Penning/config-files/blob/master/scripts/) contains various tools I have written all of which are too big for just an alias.
Some scripts are in their own subrepository, some are not.
It depends on how lazy and competent I was feeling that day.

# Repositories
For Fedora installations, I need to add custom repositories to yum.
These repos are stored in [./yum_repos/](https://github.com/Neil-Penning/config-files/blob/master/yum_repos/).
These repos are not (yet) added automatically by [./first_run.sh](https://github.com/Neil-Penning/config-files/blob/master/first_run.sh).

The following repos are there (or soon to be)
- plex
- qbittorrent-nox
- openscad

# Wallpapers
In [./wallpaper/](https://github.com/Neil-Penning/config-files/blob/master/wallpaper/) I store links to my favorite wallpapers.
