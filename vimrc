set rnu
set nu
set wrap!
set tabpagemax=15
set wildmenu

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

"Guideline : everything should end with <esc> to emulate pasting.
" add box[THING] Leader
map <leader>bd o\begin{boxDefinition}{}<CR>\end{boxDefinition}<esc>k$
map <leader>bt o\begin{boxTheorem}{}<CR>\end{boxTheorem}<esc>k$
map <leader>be o\begin{boxExample}{}<CR>\end{boxExample}<esc>k$
map <leader>bc o\begin{boxConcept}{}<CR>\end{boxConcept}<esc>k$
map <leader>bp o\begin{boxProblem}{}<CR>\end{boxProblem}<esc>k$
map <leader>bo o\begin{boxTODO}{}<CR>\end{boxTODO}<esc>k$
map <leader>bn o\begin{boxNote}{}<CR>\end{boxNote}<esc>k$
map <leader>bq o\begin{boxQuote}{}<CR>\end{boxQuote}<esc>k$

map <leader>ia o\begin{align*}<CR>\end{align*}<esc>
map <leader>ir o\begin{array}{}<CR>\end{array}<esc>
map <leader>ip o\begin{proof}<CR>\end{proof}<esc>
map <leader>ii o\begin{itemize}<CR>\end{itemize}<esc>O<tab>\item <esc>
map <leader>ie o\begin{enumerate}<CR>\end{enumerate}<esc>O<tab>\item <esc>

map <leader>imo o\[<CR>\]<esc>
map <leader>imi o\(<CR>\)<esc>

map <leader>i2 o\twotwo<CR><tab>{ }{ }<cr>{ }{ }<esc>
map <leader>i3 o\threethree<CR><tab>{ }{ }{ }<cr>{ }{ }{ }<cr>{ }{ }{ }<esc>
" map <leader>i4 o\fourfour<CR><tab>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr><esc>

" Use s to surrounds something inline
" Use S to surrounds something outline.
map <leader>s[ "1c\left[  \right]<esc>F[l"1p
map <leader>S[ "1c\left[<CR>\right]<esc>k"1p

map <leader>s( "1c\left(  \right)<esc>F(l"1p
map <leader>S( "1c\left(<CR>\right)<esc>k"1p

map <leader>s{ "1c\left\{  \right\}<esc>F{l"1p
map <leader>S{ "1c\left\{<CR>\right\}<esc>k"1p

"assumes you are on left side of () or [] 
map <leader>sb i\left<esc>l%i\right<esc>

map <leader>it o\tcblower<esc>


" match begin statement
map <leader>m yyp^wcwend<esc>O<tab><esc>




" JAVA
map <leader>jgs ciwpublic TYPE get<C-r>"() {<CR><tab>return <C-r>";<CR><C-d>}<CR>public void set<C-r>"(TYPE <C-r>") {<CR><tab>this.<C-r>" = <C-r>";<CR><C-d>}<esc>5kWWlll~3jh~2j
" Run ,js when iside the parenthesis of a constructor.
map <leader>js yi(o<tab><C-r>"<esc>:.s/, /\r/g<CR>
" Run ,jp when hovering on one of the fields.
map <leader>jp ^dwciwthis.<C-r>" = <C-R>";<esc>

" Set tab colors
:hi TabLineFill ctermfg=Black ctermbg=Blue
:hi TabLine ctermfg=White ctermbg=Red
:hi TabLineSel ctermfg=White ctermbg=Blue

set cursorline " highlight current cursor line.

set confirm

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
