set spell
syntax spell toplevel

set mp=pdflatex\ #1\ -interaction=batchmode

iabbrev detla delta

" visual and operator commands for tex items
" visual am and im  to mimic a( and i(
" Does not work with \(\) (empty math strings)
" Does not work if \) are first characters of a new line
" Does not work if cursor is placed on character _ in _\)
vnoremap am <esc>:silent! keeppattern normal! /\\]\\|\\)<C-v><C-M>?\\[\\|\\(<C-v><C-M>hm</\\]\\|\\)<C-v><C-M>lm>gv<cr>
vnoremap im <esc>:silent! keeppattern normal! /\\]\\|\\)<C-v><C-M>?\\[\\|\\(<C-v><C-M>llm</\\]\\|\\)<C-v><C-M>hm>gv<cr>
" operator am and im to mimic a( and i(
omap am :normal vam<cr>
omap im :normal vim<cr>

" visual a\{ and i\{  to mimic a{ and i{
vnoremap a\{ <esc>:silent! keeppattern normal! /\\}<C-v><C-M>?\\{<C-v><C-M>m</\\}<C-v><C-M>lm>gv<cr>
vnoremap i\{ <esc>:silent! keeppattern normal! /\\}<C-v><C-M>?\\{<C-v><C-M>llm</\\}<C-v><C-M>hm>gv<cr>
" operator a\{ and i\{  to mimic a{ and i{
omap     i\{ :normal vi\{<cr>
omap     a\{ :normal va\{<cr>

" visual a\( and i\(  to mimic a( and i(
vnoremap a\( <esc>:silent! keeppattern normal! /\\)<C-v><C-M>?\\(<C-v><C-M>m</\\)<C-v><C-M>lm>gv<cr>
vnoremap i\( <esc>:silent! keeppattern normal! /\\)<C-v><C-M>?\\(<C-v><C-M>llm</\\)<C-v><C-M>hm>gv<cr>
" operator a\( and i\(  to mimic a( and i(
omap     i\( :normal vi\(<cr>
omap     a\( :normal va\(<cr>

" visual a\[ and i\[  to mimic a[ and i[
vnoremap a\[ <esc>:silent! keeppattern normal! /\\]<C-v><C-M>?\\[<C-v><C-M>m</\\]<C-v><C-M>lm>gv<cr>
vnoremap i\[ <esc>:silent! keeppattern normal! /\\]<C-v><C-M>?\\[<C-v><C-M>llm</\\]<C-v><C-M>hm>gv<cr>
" operator a\[ and i\[  to mimic a[ and i[
omap     a\[:silent! normal va\[<cr>
omap     i\[:silent! normal vi\[<cr>

" visual ab[ and ib[ for (big) \left[ \right]
vnoremap ab[ l<esc>:silent! keeppattern normal! ?\\left[<C-v><C-M>m</\\right]<C-v><C-M>6lm>gv<cr>
vnoremap ib[ <esc>:silent! keeppattern normal! ?\\left[<C-v><C-M>6lm</\\right]<C-v><C-M>hm>gv<cr>
" operator a\[ and i\[  to mimic a[ and i[
omap     ab[:silent! normal vab[<cr>
omap     ib[:silent! normal vib[<cr>

" visual ab( and ib( for (big) \left( \right)
vnoremap ab( l<esc>:silent! keeppattern normal! ?\\left(<C-v><C-M>m</\\right)<C-v><C-M>6lm>gv<cr>
vnoremap ib( <esc>:silent! keeppattern normal! ?\\left(<C-v><C-M>6lm</\\right)<C-v><C-M>hm>gv<cr>
" operator a\[ and i\[  to mimic a[ and i[
omap     ab[:silent! normal vab[<cr>
omap     ib[:silent! normal vib[<cr>

" visual ab\{ and ib\{ for (big) \left\{ \right\}
vnoremap ab{ l<esc>:silent! keeppattern normal! ?\\left\\{<C-v><C-M>m</\\right\\}<C-v><C-M>7lm>gv<cr>
vmap ab\{ ab{
vnoremap ib{ <esc>:silent! keeppattern normal! ?\\left\\{<C-v><C-M>7lm</\\right\\}<C-v><C-M>hm>gv<cr>
vmap ib\{ ib{
" operator a\{ and i\{  to mimic a{ and i{
omap     ab{:silent! normal vab{<cr>
omap     ab\{ ab{
omap     ib{:silent! normal vib{<cr>
omap     ib\{ ib{

"  test \( test \)
"  test \[ test \]
"  test \{ test \}
"
"  vab{ vab\{ vib{ vab{
"  test \left\{ test \right\}
"  test \left( test \right)
"  test \left[ test \right]


" add box[THING] Leader
"Guideline : everything should end with <esc> to emulate pasting.
nnoremap <leader>bd o\begin{boxDefinition}{}<CR>\end{boxDefinition}<esc>k$
nnoremap <leader>bt o\begin{boxTheorem}{}<CR>\end{boxTheorem}<esc>k$
nnoremap <leader>be o\begin{boxExample}{}<CR>\end{boxExample}<esc>k$
nnoremap <leader>bc o\begin{boxConcept}{}<CR>\end{boxConcept}<esc>k$
nnoremap <leader>bp o\begin{boxProblem}{}<CR>\end{boxProblem}<esc>k$
nnoremap <leader>bo o\begin{boxTODO}{}<CR>\end{boxTODO}<esc>k$
nnoremap <leader>bn o\begin{boxNote}{}<CR>\end{boxNote}<esc>k$
nnoremap <leader>bq o\begin{boxQuote}{}<CR>\end{boxQuote}<esc>k$

"Problems
nnoremap <leader>pf o\begin{newProblem}{}<CR>\end{newProblem}<esc>k$
nnoremap <leader>pu o\begin{newProblem}[UNFINISHED]{}<CR>\end{newProblem}<esc>k$
nnoremap <leader>pn o\begin{newProblem}[NOTE]{}<CR>\end{newProblem}<esc>k$
nnoremap <leader>pq o\begin{newProblem}[QUESTION]{}<CR>\end{newProblem}<esc>k$
nnoremap <leader>pc o\begin{newProblem}[CHECKED]{}<CR>\end{newProblem}<esc>k$
nnoremap <leader>po o\begin{newProblem}[OPTIONAL]{}<CR>\end{newProblem}<esc>k$

"Inline Problems
nnoremap <leader>pif o\begin{newInlineProblem}{}<CR>\end{newInlineProblem}<esc>k$
nnoremap <leader>piu o\begin{newInlineProblem}[UNFINISHED]{}<CR>\end{newInlineProblem}<esc>k$
nnoremap <leader>pin o\begin{newInlineProblem}[NOTE]{}<CR>\end{newInlineProblem}<esc>k$
nnoremap <leader>piq o\begin{newInlineProblem}[QUESTION]{}<CR>\end{newInlineProblem}<esc>k$
nnoremap <leader>pic o\begin{newInlineProblem}[CHECKED]{}<CR>\end{newInlineProblem}<esc>k$
nnoremap <leader>pio o\begin{newInlineProblem}[OPTIONAL]{}<CR>\end{newInlineProblem}<esc>k$


"insert misc. environments
nnoremap <leader>ir o\begin{array}{}<CR>\end{array}<esc>
nnoremap <leader>ip o\begin{proof}<CR>\end{proof}<esc>
nnoremap <leader>ii o\begin{itemize}<CR>\end{itemize}<esc>O<tab>\item <esc>
nnoremap <leader>ie o\begin{enumerate}<CR>\end{enumerate}<esc>O<tab>\item <esc>

inoremap <leader>; <c-o>$

nnoremap <leader>% 128I%<esc>0

"insert matricies
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

"change math outline to align*
nnoremap <leader>coa ?\\[<cr>c2l\begin{align*}<esc>/\\]<cr>c2l\end{align*}<esc>

" changes math inline to math outline
nnoremap <leader>cio ?\\(<cr>d/\\)<cr>xs<cr>\[<cr>\]<cr><esc>kO<C-r>1<esc>^xx

" Normal mode math commands
nnoremap <leader>imo o\[ <CR>\]<esc>
nnoremap <leader>imi o\( <CR>\)<esc>
nnoremap <leader>ima o\begin{align*} <CR>\end{align*}<esc>
nmap     <leader>ia ima
" insert mode math commands
inoremap <leader>imi \(  \)<c-o>2h
inoremap <leader>imo <cr>\[ <cr>\]<C-o>O<tab>
inoremap <leader>imi <cr>\( <cr>\)<C-o>O<tab>
inoremap <leader>ima <cr>\begin{align*} <cr>\end{align*}<C-o>O<tab>

"Exit math inline and exit math outline
inoremap <leader>emi <c-o>/\\)<cr><c-o>$
inoremap <leader>emo <c-o>/\\]<cr><c-o>$
inoremap <leader>ema <c-o>/\\align<cr><c-o>$
