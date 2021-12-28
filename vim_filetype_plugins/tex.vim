set spell
syntax spell toplevel

set mp=pdflatex\ #1\ -interaction=batchmode
"
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
vnoremap <leader>sm[ "1c\left[  \right]<esc>F[l"1p
vnoremap <leader>Sm[ "1c\left[<CR>\right]<esc>k"1p

vnoremap <leader>sm( "1c\left(  \right)<esc>F(l"1p
vnoremap <leader>Sm( "1c\left(<CR>\right)<esc>k"1p

vnoremap <leader>sm{ "1c\left\{  \right\}<esc>F{l"1p
vnoremap <leader>Sm{ "1c\left\{<CR>\right\}<esc>k"1p


" visual surround 
vnoremap <leader>smi c<Bslash>(<C-r>"<Bslash>)<esc>l
vnoremap <leader>smo c<Bslash>(<C-r>"<Bslash>)<esc>l
" use latex escaped \{ \}
vnoremap <leader>s\{ c<Bslash>{<C-r>"<Bslash>}<esc>l
vnoremap <leader>s\( c<Bslash>(<C-r>"<Bslash>)<esc>l
vnoremap <leader>s\[ c<Bslash>(<C-r>"<Bslash>)<esc>l


" surround [w/W]ord math [in/out]line
noremap <leader>swmi ciw<Bslash>(<Bslash>)<esc>hP
noremap <leader>sWmi ciW<Bslash>(<Bslash>)<esc>hP
noremap <leader>swmo ciw<Bslash>[<Bslash>]<esc>hP
noremap <leader>sWmo ciW<Bslash>[<Bslash>]<esc>hP


"assumes you are on left side of () or [] 
noremap <leader>sb i<Bslash>left<esc>l%i<Bslash>right<esc>
vnoremap <leader>sb c<Bslash>left<C-r>"<esc>i<Bslash>right<esc>l


"make new [o]perator [c]ommand out of a word
nnoremap <leader>oc ciw<Bslash>newcommand{<Bslash><C-R>"}{<Bslash>operatorname{<C-R>"}}<esc>

map <leader>it o\tcblower<esc>


" match begin statement
map <leader>m yyp^wcwend<esc>O<tab><esc>

" find unfinished
map <leader>fu /\[UNFINISHED\]<cr>
