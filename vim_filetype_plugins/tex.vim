set spell
syntax spell toplevel

set mp=pdflatex\ #1\ -interaction=batchmode
"
"Guideline : everything should end with <esc> to emulate pasting.
" add box[THING] Leader
nnoremap <leader>bd o\begin{boxDefinition}{}<CR>\end{boxDefinition}<esc>k$
nnoremap <leader>bt o\begin{boxTheorem}{}<CR>\end{boxTheorem}<esc>k$
nnoremap <leader>be o\begin{boxExample}{}<CR>\end{boxExample}<esc>k$
nnoremap <leader>bc o\begin{boxConcept}{}<CR>\end{boxConcept}<esc>k$
nnoremap <leader>bp o\begin{boxProblem}{}<CR>\end{boxProblem}<esc>k$
nnoremap <leader>bo o\begin{boxTODO}{}<CR>\end{boxTODO}<esc>k$
nnoremap <leader>bn o\begin{boxNote}{}<CR>\end{boxNote}<esc>k$
nnoremap <leader>bq o\begin{boxQuote}{}<CR>\end{boxQuote}<esc>k$

nnoremap <leader>ia o\begin{align*}<CR>\end{align*}<esc>
nnoremap <leader>ir o\begin{array}{}<CR>\end{array}<esc>
nnoremap <leader>ip o\begin{proof}<CR>\end{proof}<esc>
nnoremap <leader>ii o\begin{itemize}<CR>\end{itemize}<esc>O<tab>\item <esc>
nnoremap <leader>ie o\begin{enumerate}<CR>\end{enumerate}<esc>O<tab>\item <esc>

nnoremap <leader>imo o\[<CR>\]<esc>
nnoremap <leader>imi o\(<CR>\)<esc>

inoremap <leader>imi \(  \)<c-o>2h
inoremap ,; <c-o>$

nnoremap <leader>% 128I%<esc>0

nnoremap <leader>i2 o\twotwo<CR><tab>{ }{ }<cr>{ }{ }<esc>
nnoremap <leader>i3 o\threethree<CR><tab>{ }{ }{ }<cr>{ }{ }{ }<cr>{ }{ }{ }<esc>
" map <leader>i4 o\fourfour<CR><tab>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr>{ }{ }{ }{ }<cr><esc>

" Use s to surrounds something inline
" Use S to surrounds something outline.
vnoremap <leader>sm[ "1c\left[  \right]<esc>F[l"1p
vnoremap <leader>Sm[ "1c\left[<CR>\right]<esc>k"1p

vnoremap <leader>sm( "1c\left(  \right)<esc>F(l"1p
vnoremap <leader>Sm( "1c\left(<CR>\right)<esc>k"1p

vnoremap <leader>sm{ "1c\left\{  \right\}<esc>F{l"1p
vnoremap <leader>Sm{ "1c\left\{<CR>\right\}<esc>k"1p

vnoremap <leader>sma "1c\abs{  }<esc>F{l"1p
vnoremap <leader>Sma "1c\abs{<CR>}<esc>k"1p


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

nnoremap <leader>it o\tcblower<esc>


" match begin statement
nnoremap <leader>m yyp^wcwend<esc>O<tab><esc>

" find unfinished
nnoremap <leader>fu /\[UNFINISHED\]<cr>
