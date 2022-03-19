set spell
syntax spell toplevel

set mp=pdflatex\ #1\ -interaction=batchmode

iabbrev detla delta

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

"   Name        ctermbg=xxx     ctermfg=black
hi! Definition  ctermbg=green   ctermfg=black
hi! Theorem     ctermbg=yellow  ctermfg=black
hi! Example     ctermbg=097     ctermfg=black
hi! Concept     ctermbg=blue    ctermfg=black
hi! Problem     ctermbg=red     ctermfg=black
hi! TODO        ctermbg=013     ctermfg=black
hi! Note        ctermbg=grey    ctermfg=black
hi! Quote       ctermbg=180     ctermfg=black

let m = matchadd("Definition",   ".*boxDefinition.*")
let m = matchadd("Theorem"   ,   ".*boxTheorem.*")
let m = matchadd("Example"   ,   ".*boxExample.*")
let m = matchadd("Concept"   ,   ".*boxConcept.*")
let m = matchadd("Problem"   ,   ".*boxProblem.*")
let m = matchadd("TODO"      ,   ".*boxTODO.*")
let m = matchadd("Note"      ,   ".*boxNote.*")
let m = matchadd("Quote"     ,   ".*boxQuote.*")

"   Name        ctermbg=xxx     ctermfg=black
hi! NewProblem  ctermbg=021     ctermfg=black
hi! Unfinished  ctermbg=013     ctermfg=black
hi! Optional    ctermbg=123     ctermfg=black

"let m = matchadd("NewProblem"     ,   ".*newProblem.*")
"let m = matchadd("NewProblem"     ,   ".*newInlineProblem.*")
"let m = matchadd("Unfinished"     ,   ".*UNFINISHED.*")
"let m = matchadd("Note"      ,   ".*NOTE.*")
"let m = matchadd("Optional"      ,   ".*OPTIONAL.*")
"let m = matchadd("TODO"      ,   ".*TODO.*")

nnoremap <leader>ir o\begin{array}{}<CR>\end{array}<esc>
nnoremap <leader>ip o\begin{proof}<CR>\end{proof}<esc>
nnoremap <leader>ii o\begin{itemize}<CR>\end{itemize}<esc>O<tab>\item <esc>
nnoremap <leader>ie o\begin{enumerate}<CR>\end{enumerate}<esc>O<tab>\item <esc>

inoremap <leader>; <c-o>$

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
"undos <leader>sb
"nnoremap <leader>sb 


"make new [o]perator [c]ommand out of a word
nnoremap <leader>oc ciw<Bslash>newcommand{<Bslash><C-R>"}{<Bslash>operatorname{<C-R>"}}<esc>

nnoremap <leader>it o\tcblower<esc>


" match begin statement
nnoremap <leader>m yyp^wcwend<esc>O<tab><esc>

" find unfinished
nnoremap <leader>fu /\[UNFINISHED\]<cr>

"change math outline to align*
nnoremap <leader>coa ?\\[<cr>c2l\begin{align*}<esc>/\\]<cr>c2l\end{align*}<esc>

" changes math inline to math outline
nnoremap <leader>cio ?\\(<cr>d/\\)<cr>xs<cr>\[<cr>\]<cr><esc>kO<C-r>1<esc>^xx

" Normal mode math commands
nnoremap <leader>imo o\[<CR>\]<esc>
nnoremap <leader>imi o\(<CR>\)<esc>
nnoremap <leader>ima o\begin{align*}<CR>\end{align*}<esc>
" insert mode math commands
inoremap <leader>imi \(  \)<c-o>2h
inoremap <leader>imo <cr>\[<cr>\]<C-o>O<tab>
inoremap <leader>imi <cr>\(<cr>\)<C-o>O<tab>
inoremap <leader>ima <cr>\begin{align*}<cr>\end{align*}<C-o>O<tab>
nnoremap <leader>ia o\begin{align*}<CR>\end{align*}<esc>

"Exit math inline and exit math outline
inoremap <leader>emi <c-o>/\\)<cr><c-o>$
inoremap <leader>emo <c-o>/\\]<cr><c-o>$
inoremap <leader>ema <c-o>/\\align<cr><c-o>$
