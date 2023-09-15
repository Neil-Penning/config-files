" source ~/.vimrc

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/bundle')
Plug 'nvim-lua/plenary.nvim'  " required
Plug 'hrsh7th/nvim-cmp'       " optional, for completion
Plug 'godlygeek/tabular'      " optional, needed for 'preservim/vim-markdown'
Plug 'preservim/vim-markdown' " optional, recommended for syntax highlighting, folding, etc if you're not using nvim-treesitter
Plug 'epwalsh/obsidian.nvim'
Plug 'tlaplus-community/tlaplus-nvim-plugin'
Plug 'nvim-treesitter'
"PlugInstall
call plug#end()
