set rnu
set nu
set wrap!
set tabpagemax=15
set wildmenu

set t_Co=256

" find what hl group the cursor is on
nnoremap <leader>sg :let s = synID(line('.'), col('.'), 1) \| echo synIDattr(s, 'name') . ' -<lt> ' . synIDattr(synIDtrans(s), 'name')<CR>

" reload the highlighting
nnoremap <leader>sr :syn off<CR>:syn on<CR>

set conceallevel=2


" keep 3 lines at top and bottom
set scrolloff=3

" display column number
set ruler

filetype plugin on 

" https://superuser.com/a/1096361
" Add shift+h, shift+l to move between tabs
nnoremap H :bp<cr>
nnoremap L :bn<cr>

" Use Y for y$ instead of yy
" This reflects how C and D work.
nnoremap Y y$

" Set colorscheme
"colorscheme darkblue

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

"let mapleader = ","


"run the current line as a vim command
nnoremap <leader>v yy:silent @"<cr>:echo "ran current line (".line(".").") as vim command"<CR>
"run the current visual selection as a vim command
vnoremap <leader>v y:silent @"<cr>:echo "ran visual selection as vim command"<cr>
"run the current file as a vim script
nnoremap <leader>V :so %<cr>
"run the current line as a bash command
nnoremap <leader>e :.w !bash<cr>
"run the whole file in bash
nnoremap <leader>E :%w !bash<cr>

" begin a command with :%norm
nnoremap <leader>n :%norm 

"add a newline after every comma on this line
nnoremap <leader>, :.s /, /,\r/g<cr>

" Surround every line in the file with ""
nnoremap <leader>"" :%norm I"<C-v><esc>A"<cr>
" Surround every line in the file with ''
nnoremap <leader>'' :%norm I'<C-v><esc>A'<cr>
" Change all periods to spaces except the last one (for renaming files)
nnoremap <leader>PS :%s /\./ /g<cr>:%norm $Bhr.<cr>

" Surround the current w/Word with a <thing>
nnoremap <leader>sw( ciw()<esc>P
nnoremap <leader>sW( ciW()<esc>P
nnoremap <leader>sw[ ciw[]<esc>P
nnoremap <leader>sW[ ciW[]<esc>P
nnoremap <leader>sw{ ciw{}<esc>P
nnoremap <leader>sW{ ciW{}<esc>P
nnoremap <leader>sw< ciw<lt>><esc>P
nnoremap <leader>sW< ciW<lt>><esc>P
nnoremap <leader>sw' ciw''<esc>P
nnoremap <leader>sW' ciW''<esc>P
nnoremap <leader>sw" ciw""<esc>P
nnoremap <leader>sW" ciW""<esc>P

" Surround the (s) with a <thing>
" test ing
vnoremap <leader>s( c()<esc>P
vnoremap <leader>s[ c[]<esc>P
vnoremap <leader>s{ c{}<esc>P
vnoremap <leader>s< c<lt>><esc>P
vnoremap <leader>s' c''<esc>P
vnoremap <leader>s" c""<esc>P
vnoremap <leader>s<space> c  <esc>P

nmap <leader>s( v<leader>s(
nmap <leader>s[ v<leader>s[
nmap <leader>s{ v<leader>s{
nmap <leader>s< v<leader>s<
nmap <leader>s' v<leader>s'
nmap <leader>s" v<leader>s"
nmap <leader>s<space> v<leader>s<space>

" Evaluate selected string with expression register, paste result.
" (2150*8989)
vnoremap <leader>= s<C-r>=<C-r>"<cr><esc>

" evaluate selected string using sage; replace selected text with output.
"vnoremap <leader>rs "ss<C-r>=system('/Applications/SageMath-9.2.app/sage -c "print(<C-r>s)"')<cr>
vnoremap <leader>rs "ax:call writefile(getreg('a',1,1), "./.tmp.sage") <bar> put =system('/Applications/SageMath-9.2.app/sage .tmp.sage && rm .tmp.sage && rm .tmp.sage.py')<cr>

" exit insert mode with jk
inoremap jk <esc>

" use q; for q: - (removes shift)
nnoremap q; q:
" if you're in commandline mode, ;; runs <C-f> to go into history mode
cnoremap ;; <C-f>

" Set tab colors
:hi TabLineFill ctermfg=Black ctermbg=Blue
:hi TabLine ctermfg=White ctermbg=Red
:hi TabLineSel ctermfg=White ctermbg=Blue

" highlight when searching with /
" https://vim.fandom.com/wiki/Highlight_all_search_pattern_matches
set hlsearch

" Change (Matching parenthesis) highlight color
" https://stackoverflow.com/questions/10746750/set-vim-bracket-highlighting-colors
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

set cursorline " highlight current cursor line.

set confirm

" Highlight search terms as they're typed.
set incsearch

" exit current buffer
nnoremap Q :bd<CR>

set efm=


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


