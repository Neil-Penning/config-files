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
map <leader>bd o\begin{boxDefinition}{}<CR>\end{boxDefinition}<esc>O<tab><esc>
map <leader>bt o\begin{boxTheorem}{}<CR>\end{boxTheorem}<esc>O<tab><esc>
map <leader>be o\begin{boxExample}{}<CR>\end{boxExample}<esc>O<tab><esc>
map <leader>bc o\begin{boxConcept}{}<CR>\end{boxConcept}<esc>O<tab><esc>
map <leader>bp o\begin{boxProblem}{}<CR>\end{boxProblem}<esc>O<tab><esc>
map <leader>bo o\begin{boxTODO}{}<CR>\end{boxTODO}<esc>O<tab><esc>
map <leader>bn o\begin{boxNote}{}<CR>\end{boxNote}<esc>O<tab><esc>

map <leader>a o\begin{align*}<CR>\end{align*}<esc>O<tab><esc>
map <leader>ip o\begin{proof}<CR>\end{proof}<esc>O<tab><esc>
map <leader>ii o\begin{itemize}<CR><tab>\item <CR>\end{itemize}<esc>

map <leader>mo o\[<CR>\]<esc>O<tab><esc>

map <leader>l i\right<ESC>l%i\left<ESC>

