set rnu
set nu
set wrap!
set tabpagemax=15
set wildmenu


filetype plugin on 

" https://superuser.com/a/1096361
" Add shift+h, shift+l to move between tabs
nnoremap H gT
nnoremap L gt

" Set colorscheme
colorscheme darkblue

" Turn Syntax on by default
syntax on

" https://vi.stackexchange.com/a/423
" Set tab	to	display as !······
set list
set listchars=tab:!·,trail:·,eol:¬,space:·

" show what is being typed.
set showcmd

"Use spaces everywhere
set expandtab

"use 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4

" Let vim handle auto indenting
set autoindent
let mapleader = ","

" Set tab colors
:hi TabLineFill ctermfg=Black ctermbg=Blue
:hi TabLine ctermfg=White ctermbg=Red
:hi TabLineSel ctermfg=White ctermbg=Blue

" highlight when searching with /
" https://vim.fandom.com/wiki/Highlight_all_search_pattern_matches
set hlsearch

set cursorline " highlight current cursor line.

set confirm

" ignore the following filetypes when using vim's wild tab complete
set wildignore+=*.log
set wildignore+=*.toc
set wildignore+=*.gz
set wildignore+=*.aux
set wildignore+=*.out
set wildignore+=*.synctex.gz
set wildignore+=*.DS_Store
set wildignore+=*.sagetex.sage
set wildignore+=*.sagetex.sage.py
set wildignore+=*.scmd
set wildignore+=*.sout
set wildignore+=*sage-plots-for*
set wildignore+=*_doctest.sage*
set wildignore+=*.swp
set wildignore+=*.fdb*
set wildignore+=*.fls
set wildignore+=*.synctex*
set wildignore+=*bbl
set wildignore+=*bcf
set wildignore+=*blg
set wildignore+=*run.xml
set wildignore+=*temp.tex
set wildignore+=*.pdf
set wildignore+=*.sage.py
